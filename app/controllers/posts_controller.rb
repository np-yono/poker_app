require_relative './concerns/common_actioner'

class PostsController < ApplicationController

    include Common_Actioner

     def result

        # 値を受け取る
        @post = params[:content]

        # 役判定
        hand_action

        # topページに戻る
        render("home/top")

     end

end


