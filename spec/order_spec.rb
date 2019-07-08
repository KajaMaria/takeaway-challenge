require 'order'

# As a customer
# So that I can order the meal I want
# I would like to be able to select some number of several available dishes


describe Order do
  subject(:order) { described_class.new(menu) }

  let(:menu) { double :menu, :price => 1 }

  let(:dish) { double(:dish) }
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

  # As a customer
  # So that I can verify that my order is correct
  # I would like to check that the total I have been given matches the sum of the various dishes in my order

describe '#total' do
  it "checks is the total amount is correct" do
    allow(menu).to receive(:price).with(dishes)
    order.add(:chicken, 2)
    total = 2
    expect(order.total).to eq(total)
  end
end

end
