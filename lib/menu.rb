
class Menu
  attr_reader :dishes

  def initialize(dishes)
    @dishes = dishes
  end

  def reading_menu
    dishes.map do |name, price|
      "%s £%.2f" % [name.to_s.capitalize, price]
    end.join(", ")
  end
# s = "hello, %s. Where is %s?" % ("John","Mary")
# % string interpelation for replacing #{}
end
