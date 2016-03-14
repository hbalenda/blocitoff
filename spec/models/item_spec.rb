RSpec.describe Item, type: :model do
  let(:item) { create(:item) }
  it { is_expected.to belong_to(:user) }

  describe "attributes" do
    it "responds to name" do
      expect(item).to respond_to(:name)
    end

    it "responds to time_remaining" do
      expect(item).to respond_to(:time_remaining)
    end
  end
end
