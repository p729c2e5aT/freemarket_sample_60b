require 'rails_helper'

describe ItemsController do

  describe 'DELETE destroy' do
  let(:user) { build(:user) }
    context 'can delete' do
      # ログイン中ユーザー＝出品者ユーザーの場合、アイテムを削除できる
      it '@item.seller_id == current_user.id' do
        login user
        item = create(:item, seller_id: 10)
        expect do
          delete :destroy, params: { id: item.id }, session: {}
        end.to change(Item, :count).by(-1)
      end
      # 削除に成功した場合root_pathに移動する
      it 'redirects to root_path' do
        login user
        item = create(:item, seller_id:10)
        delete :destroy, params: { id: item.id }, session: {}
        expect(response).to redirect_to root_path(user)
      end
    end

    context 'can not delete' do
      # ログイン中ユーザー！＝出品者ユーザーの場合、アイテムを削除できない
      it '@item.seller_id != current_user.id' do
        login user
        item = create(:item, seller_id: 20)
        expect do
          delete :destroy, params: { id: item.id }, session: {}
        end.to change(Item, :count).by(0)
      end
      # ログイン中ユーザー！＝出品者ユーザーの場合、アイテムを削除できず、detail_item_pathに飛ぶ
      it "redirect to detail_item_path" do
        login user
        item = create(:item, seller_id:20)
        delete :destroy, params: { id: item.id }, session: {}
        expect(response).to redirect_to detail_item_path(item)
      end
    end
  end
end
