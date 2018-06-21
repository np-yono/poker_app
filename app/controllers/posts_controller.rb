require_relative '../validator/common_validator'
require_relative './concerns/common_checker'

include Common_Checker
include Common_Validator

class PostsController < ApplicationController

     def result

        # 値を受け取る
        @post = params[:content]
        # binding.pry
        # Validation
        hand_valid

        # 役判定
        if @common_error_array.last == "no problem"
          hand_check
        else
          @error_message = @common_error_array[0]
        end

        # topページに戻る
        render("home/top")

     end

end


