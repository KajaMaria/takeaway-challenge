require 'takeaway'

describe Takeaway do
subject(:takeaway) { described_class.new(menu: menu) }
let(:menu) { double(:menu, print: printed_menu) }
let(:printed_menu) { "Printed Menu" }

describe "#print_menu" do
  it "Shows Menu with lists and prices" do
    expect(takeaway.print_menu).to eq(printed_menu)
  end
end
# 
# As a customer
# So that I can verify that my order is correct
# I would like to check that the total I have been given matches the sum of the various dishes in my order



end
