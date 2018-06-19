require 'rails_helper'

# RSpec.describe Poker_hands, type: :request do
RSpec.describe API::Ver1::Poker_hands, type: :request do

  include RSpec::Rails::RequestsExampleGroup

  describe 'POST /api/v1/poker_hands' do


    context '値が正常に入力される場合' do
      before do
        @request       = {"cards": ["S9 S10 S11 S12 S13", "D9 S10 S11 S12 S13", "S8 S10 S11 S12 S13"]}
        post '/api/v1/poker_hands', params: @request
        @json          = JSON.parse(response.body)
        @expected_json = {"result": [{"card": "S9 S10 S11 S12 S13","hands": "ストレートフラッシュ","best": "true"},
                                     {"card": "D9 S10 S11 S12 S13","hands": "フラッシュ","best": "false"},
                                     {"card": "S8 S10 S11 S12 S13","hands": "ストレート","best": "false"}]}
      end

        it 'リクエストが200 OK となること' do
          expect(response).to be_success
          expect(response.status).to eq 200
        end
        it ' :topを表示すること' do
          expect(@json).to eq @expected_json
        end
    end

  end
end

