require_relative '../../validator/common_validator'
require_relative './common_checker'
include Common_Checker
include Common_Validator

module Common_Actioner

  def hand_action

    hand_valid

    if @error == nil
        hand_check
    end

    # hash for API
    @hash = {card: @post,hand: @yaku,best: @point}

  end
end
