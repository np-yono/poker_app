require_relative '../../../controllers/concerns/common'
include Common

module API
  module Ver1
    class Poker_hands < Grape::API
      resource :poker_hands do

        error_message = "不正なリクエストです。"

        # URLのvalidation
        # if
        #  error!("error":{"msg": error_message})
        # end

        # 未入力のvalidation
        # if
        #  error!("error":{"msg": error_message})
        # end

        # 形式のvalidation
        # if
        #   error!("error":{"msg": error_message})
        # end

        # POST /api/v1/poker_hands

        post do

          # requestを受け取る
          post = JSON.parse request.body.read

          # keyのvalidation
          if post.keys.count != 1 || post.keys.join("") != "cards"
            error!("error":{"msg": error_message})
          end


          # 配列の取り出し
          poker_posts = post["cards"]


          # 配列のvalidation
          if poker_posts.empty?
            error!("error":{"msg": error_message})
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

            hand_action

            if @hash.has_value?(0)
              @hash.store(:hand, @error)
              error_array.push(@hash)
            else
              poker_array.push(@hash)
            end

            points_array.push(@point)

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

          error_array.each do |small_error|
            small_error.store(:best,"error")
          end



          # response
          poker_hash = {}

          if poker_array.empty?
          else
            poker_hash.store("result", poker_array)
          end

          if error_array.empty?
          else
            poker_hash.store("error", error_array)
          end

          poker_hash


        end
      end
    end
  end
end

