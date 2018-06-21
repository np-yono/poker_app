require_relative '../rails_helper'

RSpec.describe PostsController, type: :controller do


  # 正常に入力される場合 ##################################################################################################################
  describe 'Post #result' do

    context '値が正常に入力される場合（ストレートフラッシュ）' do
      before do
        @post = {content: "S9 S10 S11 S12 S13"}
        post :result, params: @post
        @yaku = "ストレートフラッシュ"
      end
        it 'リクエストが200 OK となること' do
          expect(response).to be_success
          expect(response.status).to eq(200)
        end
        it '@postに期待した値が入ること' do
          expect(assigns(:post)).to eq "S9 S10 S11 S12 S13"
        end
        it '@yakuに期待した値が入ること' do
          expect(assigns(:yaku)).to eq @yaku
        end
        it '@errorに期待した値が入ること' do
          expect(assigns(:error)).to eq nil
        end
        it ' :topを表示すること' do
          expect(response).to render_template :top
        end
    end

    context '値が正常に入力される場合（ストレート）' do
      before do
        @post = {content: "D9 S10 S11 S12 S13"}
        post :result, params: @post
        @yaku = "ストレート"
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "D9 S10 S11 S12 S13"
      end
      it '@yakuに期待した値が入ること' do
        expect(assigns(:yaku)).to eq @yaku
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq nil
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context '値が正常に入力される場合（フラッシュ）' do
      before do
        @post = {content: "S8 S10 S11 S12 S13"}
        post :result, params: @post
        @yaku = "フラッシュ"
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S8 S10 S11 S12 S13"
      end
      it '@yakuに期待した値が入ること' do
        expect(assigns(:yaku)).to eq @yaku
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq nil
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context '値が正常に入力される場合（フォー・オブ・ア・カインド）' do
      before do
        @post = {content: "S12 S13 D13 H13 C13"}
        post :result, params: @post
        @yaku = "フォー・オブ・ア・カインド"
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S12 S13 D13 H13 C13"
      end
      it '@yakuに期待した値が入ること' do
        expect(assigns(:yaku)).to eq @yaku
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq nil
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context '値が正常に入力される場合（フルハウス）' do
      before do
        @post = {content: "S12 D12 S13 D13 H13"}
        post :result, params: @post
        @yaku = "フルハウス"
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S12 D12 S13 D13 H13"
      end
      it '@yakuに期待した値が入ること' do
        expect(assigns(:yaku)).to eq @yaku
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq nil
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context '値が正常に入力される場合（スリー・オブ・ア・カインド）' do
      before do
        @post = {content: "S11 S12 S13 D13 H13"}
        post :result, params: @post
        @yaku = "スリー・オブ・ア・カインド"
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S11 S12 S13 D13 H13"
      end
      it '@yakuに期待した値が入ること' do
        expect(assigns(:yaku)).to eq @yaku
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq nil
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context '値が正常に入力される場合（ツーペア）' do
      before do
        @post = {content: "S11 S12 D12 S13 D13"}
        post :result, params: @post
        @yaku = "ツーペア"
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S11 S12 D12 S13 D13"
      end
      it '@yakuに期待した値が入ること' do
        expect(assigns(:yaku)).to eq @yaku
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq nil
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context '値が正常に入力される場合（ワンペア）' do
      before do
        @post = {content: "D1 H7 S3 H5 S5"}
        post :result, params: @post
        @yaku = "ワンペア"
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "D1 H7 S3 H5 S5"
      end
      it '@yakuに期待した値が入ること' do
        expect(assigns(:yaku)).to eq @yaku
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq nil
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context '値が正常に入力される場合（ハイカード）' do
      before do
        @post = {content: "D4 H7 S13 C6 H12"}
        post :result, params: @post
        @yaku = "ハイカード"
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "D4 H7 S13 C6 H12"
      end
      it '@yakuに期待した値が入ること' do
        expect(assigns(:yaku)).to eq @yaku
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq nil
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    # 正常に入力されない場合 ##################################################################################################################

    # Common_validation 1 にはじかれるケース　理由は要素が５つないこと ##################################################################################
    context '要素が５つ未満' do
      before do
        @post = {content: "S9 S11 S12 S13"}
        post :result, params: @post
      end
        it 'リクエストが200 OK となること' do
          expect(response).to be_success
          expect(response.status).to eq(200)
        end
        it '@postに期待した値が入ること' do
          expect(assigns(:post)).to eq "S9 S11 S12 S13"
        end
        it '@errorに期待した値が入ること' do
          expect(assigns(:error)).to eq "5つのカード指定文字を半角スペース区切りで入力してください。"
        end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context 'v要素が６つ以上' do
      before do
        @post = {content: "S8 S9 S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S8 S9 S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "5つのカード指定文字を半角スペース区切りで入力してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context '区切っていない部分がある' do
      before do
        @post = {content: "S9S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S9S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "5つのカード指定文字を半角スペース区切りで入力してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end


    # Common_validation 1 にはじかれるケース　理由は半角スペース以外で区切っていること #################################################################################################

    context '全角スペース' do
      before do
        @post = {content: "S9　S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S9　S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "5つのカード指定文字を半角スペース区切りで入力してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context '半角スペース２個以上' do
      before do
        @post = {content: "S9  S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S9  S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "5つのカード指定文字を半角スペース区切りで入力してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context '記号' do
      before do
        @post = {content: "S9/S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S9/S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "5つのカード指定文字を半角スペース区切りで入力してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context '空白文字(※S9とS10の間)' do
      before do
        @post = {content: "S9ㅤS10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S9ㅤS10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "5つのカード指定文字を半角スペース区切りで入力してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end


    context '外側にスペース' do
      before do
        @post = {content: " S9 S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq " S9 S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "5つのカード指定文字を半角スペース区切りで入力してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end



    # Comon_validation 1 にはじかれるケース　理由は要素が重複していること ###################################################################################################################

    context 'Common_validation 1 にはじかれる（重複）' do
      before do
        @post = {content: "S10 S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S10 S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "5つのカード指定文字を半角スペース区切りで入力してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end


    # Common_validation 2 にはじかれるケース　理由はスートが指定文字でないこと ########################################################################################################

    context 'スートがない' do
      before do
        @post = {content: "9 S10 S11 S12 S13"}
        post :result, params: @post
      end
        it 'リクエストが200 OK となること' do
          expect(response).to be_success
          expect(response.status).to eq(200)
        end
        it '@postに期待した値が入ること' do
          expect(assigns(:post)).to eq "9 S10 S11 S12 S13"
        end
        it '@errorに期待した値が入ること' do
          expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(9) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
        end
        it ' :topを表示すること' do
          expect(response).to render_template :top
        end
    end


    context '全角' do
      before do
        @post = {content: "S９ S10 S11 S12 S13"}
        post :result, params: @post
      end
        it 'リクエストが200 OK となること' do
          expect(response).to be_success
          expect(response.status).to eq(200)
        end
        it '@postに期待した値が入ること' do
          expect(assigns(:post)).to eq "S９ S10 S11 S12 S13"
        end
        it '@errorに期待した値が入ること' do
          expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(S９) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
        end
        it ' :topを表示すること' do
          expect(response).to render_template :top
        end
     end


    context '半角小文字' do
      before do
        @post = {content: "s9 S10 S11 S12 S13"}
        post :result, params: @post
      end
        it 'リクエストが200 OK となること' do
          expect(response).to be_success
          expect(response.status).to eq(200)
        end
        it '@postに期待した値が入ること' do
          expect(assigns(:post)).to eq "s9 S10 S11 S12 S13"
        end
        it '@errorに期待した値が入ること' do
          expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(s9) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
        end
        it ' :topを表示すること' do
          expect(response).to render_template :top
        end
    end

    context 'SDHC以外の英字半角大文字' do
      before do
        @post = {content: "F9 S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "F9 S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(F9) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context 'その他の半角文字' do
      before do
        @post = {content: "ё9 S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "ё9 S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(ё9) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context 'その他の半角記号' do
      before do
        @post = {content: "#9 S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "#9 S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(#9) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context 'SDHCの繰り返し' do
      before do
        @post = {content: "SSS9 S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "SSS9 S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(SSS9) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end


    # Common_validation 2 にはじかれるケース　理由は数字が指定文字でないこと ################################################################################################################################


    context '数字がない' do
      before do
        @post = {content: "S S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(S) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end


    context '全角' do
      before do
        @post = {content: "S９ S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S９ S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(S９) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end


    context '半角記号' do
      before do
        @post = {content: "S= S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S= S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(S=) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end


    context '半角英字' do
      before do
        @post = {content: "SK S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "SK S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(SK) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context '半角その他の文字' do
      before do
        @post = {content: "Sё S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "Sё S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(Sё) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context '14以上' do
      before do
        @post = {content: "S19 S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S19 S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(S19) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end


    context '01' do
      before do
        @post = {content: "S04 S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S04 S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(S04) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end


    context '小数' do
      before do
        @post = {content: "S3.5 S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S3.5 S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(S3.5) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end


    context '演算' do
      before do
        @post = {content: "S4%3 S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S4%3 S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(S4%3) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end


    # Common_alidation 2 にはじかれるケース　理由はスートと数字の間に文字が入ること ################################################################################################################################

    context 'スートと数字の間に文字' do
      before do
        @post = {content: "S@9 S10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S@9 S10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(S@9) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    # Common_validation 1とCommon_validation 2にはじかれる　エラーが混在している場合 ################################################################################################################################

    context 'Common_validation 1にはじかれるエラーが優先される' do
      before do
        @post = {content: "A14 S10 S11S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "A14 S10 S11S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "5つのカード指定文字を半角スペース区切りで入力してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end


    # Common_validation 2にはじかれるエラーが混在している場合 ################################################################################################################################

    context 'エラーが2つ' do
      before do
        @post = {content: "S01 P10 S11 S12 S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S01 P10 S11 S12 S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(S01) ,2番目のカード指定文字が不正です。(P10) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context 'エラーが3つ' do
      before do
        @post = {content: "S１ SS1 10 S1 S10"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S１ SS1 10 S1 S10"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(S１) ,2番目のカード指定文字が不正です。(SS1) ,3番目のカード指定文字が不正です。(10) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context 'エラーが4つ' do
      before do
        @post = {content: "{} /d+/ L12 ~S2~ S13"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "{} /d+/ L12 ~S2~ S13"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。({}) ,2番目のカード指定文字が不正です。(/d+/) ,3番目のカード指定文字が不正です。(L12) ,4番目のカード指定文字が不正です。(~S2~) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context 'エラーが5つ' do
      before do
        @post = {content: "1996 May 26th a.m. 3:45"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "1996 May 26th a.m. 3:45"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(1996) ,2番目のカード指定文字が不正です。(May) ,3番目のカード指定文字が不正です。(26th) ,4番目のカード指定文字が不正です。(a.m.) ,5番目のカード指定文字が不正です。(3:45) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end



  end
end

