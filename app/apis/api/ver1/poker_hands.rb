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


        # module MyApp
        #   class ExceptionHandler
        #     def initialize(app)
        #       @app = app
        #     end
        #
        #     def call(env)
        #       begin
        #         @app.call(env)
        #       rescue ActiveRecord::NotFound
        #         raise Exceptions::NotFound
        #       rescue
        #         raise Exceptions::InternalServerError
        #       end
        #     rescue Exceptions::Base => exception
        #       exception.to_rack_response
        #     end
        #   end
        #
        #   module Exceptions
        #     class Base < StandardError
        #       def to_rack_response
        #         [status_code, headers, [body]]
        #       end
        #
        #       private
        #
        #       # 子クラスで適宜Overrideする
        #       def status_code
        #         500
        #       end
        #
        #       def headers
        #         { "Content-Type" => "application/json" }
        #       end
        #
        #       def body
        #         { message: error_message, type: type }.to_json
        #       end
        #
        #       # MyApp::Exceptions::NotFoundに対して"NotFound"が返る
        #       def error_message
        #         type.humanize
        #       end
        #
        #       # MyApp::Exceptions::NotFoundに対して"Not found"が返る
        #       def type
        #         self.class.to_s.split("::").last.underscore
        #       end
        #     end
        #
        #     class InternalServerError < Base
        #     end
        #
        #     class NotFound < Base
        #       def status_code
        #         404
        #       end
        #     end
        #   end
        # end
        #
        # Rails.configuration.middleware.insert(0, MyApp::RackMiddlewares::ExceptionHandler)



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

