
class Menu
  DEFAULT_MENU = {
    "chicken" => 1,
    "chips" => 2,
    "salad" => 3
  }
  attr_reader :dishes

  def initialize(dishes = DEFAULT_MENU)
    @dishes = dishes
  end

  def reading_menu
    dishes.map do |name, price|
      "%s £%.2f" % [name.to_s.capitalize, price]
    end.join("\n")
  end
# s = "hello, %s. Where is %s?" % ("John","Mary")
# % string interpelation for replacing #{}
end
