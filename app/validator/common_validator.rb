module Common_Validator


  def hand_valid


    # Validation 1（半角スペース区切り、要素５つ）


    validation_array1 = []


    if @post.scan(/\s/).length == 4 && @post.scan(/\s/).uniq.length == 1 && @post.scan(/\f|\t|\r|\n/).empty?
    else
      validation_array1.push("5つのカード指定文字を半角スペース区切りで入力してください。")
    end

    # 重複
    if @post.split(/\s/).uniq.count != 5
      validation_array1.push("5つのカード指定文字を半角スペース区切りで入力してください。")
    end




    # Validation 2 （各要素が指定文字かどうか）


    validation_array2 = []
    post_array        = @post.split(" ")


    n = 0
    post_array.each do |item|
      m = n + 1

      suits_element   = item.split("")[0]
      numbers_element = item.delete(suits_element).to_i

      if item.scan(/[^A-Za-z0-9 ]/).count != 0
        validation_array2.push("#{m}番目のカード指定文字が不正です。(#{item}) ")
      elsif item.delete(suits_element)[0] == "0"
        validation_array2.push("#{m}番目のカード指定文字が不正です。(#{item}) ")
      elsif /[SDHC]/ === suits_element && item.scan(/[SDHC]/).count == 1 && numbers_element >= 1 && numbers_element <= 13
        validation_array2.push("no problem")
      else
        validation_array2.push("#{m}番目のカード指定文字が不正です。(#{item}) ")
      end
      n +=1
    end

    validation_array2.delete("no problem")


    validation_array2.push("半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。") unless validation_array2.empty?


    # 2つのエラーから選択

    @common_error_array = []

    if validation_array1.count != 0
      @common_error_array.push(validation_array1[0])
    elsif validation_array1.count == 0 && validation_array2.count != 0
      @common_error_array.push(validation_array2.uniq.join(","))
    else
      @common_error_array.push("no problem")
    end


  end


end
