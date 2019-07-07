require 'takeaway'

describe Takeaway do
subject(:takeaway) { described_class.new(menu: menu, order: order) }
let(:menu) { double(:menu, print: printed_menu) }
let(:printed_menu) { "Printed Menu" }
let(:order) { double(:order, total: 8 )}
let(:dishes) do
  {
    chicken: 2,
    chips: 3,
  }
end
describe "#print_menu" do
  it "Shows Menu with lists and prices" do
    expect(takeaway.print_menu).to eq(printed_menu)
  end
end
#
# As a customer
# So that I can verify that my order is correct
# I would like to check that the total I have been given matches the sum of the various dishes in my order
  it "can order some number of several dishes" do
    expect(order).to receive(:add).twice
    takeaway.place_order(dishes)
  end

it "knows the order total" do
  allow(order). to receive(:add)
  total = takeaway.place_order(dishes)
  expect(total). to eq(8)
end
end
