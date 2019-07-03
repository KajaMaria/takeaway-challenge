require 'menu'

describe Menu do

subject(:menu) { described_class.new(dishes) }
let(:dishes) do
   {
    salad: 4.50,
    soup: 2.00
  }
end

  it "shows a list of meals and prices" do
    expect(menu.dishes).to eq(dishes)
  end

  it "prints a list of dishes with prices" do
    printed_menu = "Salad £4.50, Soup £2.00"
    expect(menu.reading_menu).to eq(printed_menu)
  end
end
