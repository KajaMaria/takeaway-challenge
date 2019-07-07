require 'menu'

describe Menu do

  let(:takeaway) { double :takeaway, printed_menu => Menu::DEFAULT_MENU }
  let(:menu) {double :menu, items: {
      "chicken" => 1,
      "chips" => 2,
      "salad" => 3
    } }


  # it "shows a list of meals and prices" do
  #   subject.takeaway
  #   expect(takeaway.print_menu).to eq Menu::DEFAULT_MENU
  # end

  it "prints a list of dishes with prices" do
    Menu::DEFAULT_MENU.each

    expect(subject.reading_menu).to eq("Chicken £1.00\nChips £2.00\nSalad £3.00")
  end
end
