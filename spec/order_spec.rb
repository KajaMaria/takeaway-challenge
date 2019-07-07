require 'order'

# As a customer
# So that I can order the meal I want
# I would like to be able to select some number of several available dishes


describe Order do
  subject(:order) { described_class.new(menu) }

  let(:menu) { double(:menu) }

  let(:quantity) { double(:quantity)}

  let(:dishes) do
    {
      chicken: 2,
      chips: 3,
    }
  end

  describe '#add' do
    it "selects several dishes from the menu" do
      order.add(:chicken, 2)
      order.add(:chips, 3)
      expect(order.dishes).to eq(dishes)
    end
  end
end
