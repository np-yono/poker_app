require_relative '../spec_helper'
require_relative '../../app/controllers/concerns/common_checker'
include Common_Checker

RSpec.describe Common_Checker do

  describe '#hand_action' do

    # checkアクション（役判定）###################################################################################
    context 'validationを抜けて役判定される' do
      it 'ストレートフラッシュになる' do
        @post = "S9 S10 S11 S12 S13"
        expect(hand_check{@post}).to eq card: "S9 S10 S11 S12 S13",hand: "ストレートフラッシュ", best: 9
      end
      it 'ストレートになる' do
        @post = "S9 S10 S11 S12 D13"
        expect(hand_check{@post}).to eq card: "S9 S10 S11 S12 D13",hand: "ストレート", best: 8
      end
      it 'フラッシュになる' do
        @post = "S8 S10 S11 S12 S13"
        expect(hand_check{@post}).to eq card: "S8 S10 S11 S12 S13",hand: "フラッシュ", best: 7
      end
      it 'フォー・オブ・ア・カインドになる' do
        @post = "S12 S13 D13 H13 C13"
        expect(hand_check{@post}).to eq card: "S12 S13 D13 H13 C13",hand: "フォー・オブ・ア・カインド", best: 6
      end
      it 'フルハウスになる' do
        @post = "S12 H12 S13 D13 H13"
        expect(hand_check{@post}).to eq card: "S12 H12 S13 D13 H13",hand: "フルハウス", best: 5
      end
      it 'スリー・オブ・ア・カインドになる' do
        @post = "S11 S12 S13 D13 H13"
        expect(hand_check{@post}).to eq card: "S11 S12 S13 D13 H13",hand: "スリー・オブ・ア・カインド", best: 4
      end
      it 'ツーペアになる' do
        @post = "S11 S12 D12 S13 D13"
        expect(hand_check{@post}).to eq card: "S11 S12 D12 S13 D13",hand: "ツーペア", best: 3
      end
      it 'ワンペアになる' do
        @post = "S10 S11 S12 S13 D13"
        expect(hand_check{@post}).to eq card: "S10 S11 S12 S13 D13",hand: "ワンペア", best: 2
      end
      it 'ハイカードになる' do
        @post = "D8 S10 S11 S12 S13"
        expect(hand_check{@post}).to eq card: "D8 S10 S11 S12 S13",hand: "ハイカード", best: 1
      end
    end

  end
end
