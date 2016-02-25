RSpec.describe ItemsController, type: :controller do
  before(:each) do
    @user = FactoryGirl.create(:user)
    @user.confirm
    sign_in @user
    @item = FactoryGirl.create(:item)
    @user.items << @item
  end


  describe "POST create" do
    it "increases the number of items by one" do
      expect{ post :create, user_id:@user.id, item: {name: @item.name} }.to change(Item,:count).by(1)
    end

    it "returns http success" do
      post :create, user_id: @user.id, item: {name: @item.name}
      expect(response).to redirect_to [@user]
    end
  end
end
