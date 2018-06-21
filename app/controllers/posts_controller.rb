require_relative 'concerns/common'

class PostsController < ApplicationController

    include Common

     def result

        # 値を受け取る
        @post = params[:content]

        # 役判定
        hand_action

        # topページに戻る
        render("home/top")

     end

end


