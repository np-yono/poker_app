require_relative '../../../controllers/concerns/common_checker'
require_relative '../../../validator/common_validator'
include Common_Checker
include Common_Validator

module API
  module Ver1
    class Poker_hands < Grape::API
      resource :poker_hands do

        error_message = "不正なリクエストです。"

        # POST /api/v1/poker_hands

        # URLのvalidation
        # if
        #  error!('指定のURLを入力してください。')
        # end

        # 形式のvalidation
        # if
        #  error!('JSONで入力してください。')
        # end


        post do

          # 未入力のvalidation
          if params.empty?
           error!(error: {msg: error_message})
          end

          # requestを受け取る
          post = JSON.parse request.body.read

           # keyのvalidation
           if post.keys.join("") != "cards"
             error!(error: {msg: error_message})
           end

           # 配列の取り出し
           poker_posts = post["cards"]

          # 配列のvalidation
          if poker_posts.empty?
            error!(error: {msg: error_message})
          end

          params do
            requires :cards, type: String
          end


          # 役判定

            poker_array = []

            error_array = []

           points_array = []

           poker_posts.each do |poker_post|
            @post = poker_post

            hand_valid

            if @common_error_array.last == "no problem"
              hand_check
              poker_array.push(@hash)
              points_array.push(@hash[:best])
            else
              error_array.push(card: @post,msg: @common_error_array.last)
            end

           end


          # 役の点数の最大値
          point_max = points_array.max


          # bestの判定
          poker_array.each do |small_hash|
            if small_hash.has_value?(point_max)
              small_hash.store(:best,"true")
            else
              small_hash.store(:best,"false")
            end
          end


          # response
          poker_hash = {}

          poker_hash.store("result", poker_array) unless poker_array.empty?

          poker_hash.store("error", error_array) unless error_array.empty?

          poker_hash


        end
      end
    end
  end
end

