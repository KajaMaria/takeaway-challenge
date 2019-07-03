require 'takeaway'

describe Takeaway do
subject(:takeaway) { described_class.new(menu: menu) }
let(:menu) { double(:menu, print: printed_menu) }
let(:printed_menu) { "Printed Menu" }
  it "Shows Menu with lists and prices" do
    expect(takeaway.print_menu).to eq(printed_menu)
  end
end
