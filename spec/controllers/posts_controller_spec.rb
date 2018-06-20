require_relative '../rails_helper'

RSpec.describe PostsController, type: :controller do


  # 正常に入力される場合 #########################################################
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

    # 正常に入力されない場合 #########################################################

    context 'Validation1にはじかれる' do
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

    context '未入力でValidation1にはじかれる' do
      before do
        @post = {content: ""}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq ""
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "5つのカード指定文字を半角スペース区切りで入力してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

    context 'Validation2にはじかれる' do
      before do
        @post = {content: "S 10 S１１ A12 S19"}
        post :result, params: @post
      end
      it 'リクエストが200 OK となること' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end
      it '@postに期待した値が入ること' do
        expect(assigns(:post)).to eq "S 10 S１１ A12 S19"
      end
      it '@errorに期待した値が入ること' do
        expect(assigns(:error)).to eq "1番目のカード指定文字が不正です。(S) ,2番目のカード指定文字が不正です。(10) ,3番目のカード指定文字が不正です。(S１１) ,4番目のカード指定文字が不正です。(A12) ,5番目のカード指定文字が不正です。(S19) ,半角英字大文字のスート（S,H,D,C）と数字（1〜13）の組み合わせでカードを指定してください。"
      end
      it ' :topを表示すること' do
        expect(response).to render_template :top
      end
    end

  end
end
