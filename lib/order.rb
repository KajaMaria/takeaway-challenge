require 'menu'

class Order

attr_reader :dishes, :menu

def initialize(menu)
  @dishes = {}
  @menu = menu
end

def add(dish, quantity)
  dishes[dish] = quantity
end


def total
  @dishes.map do |dish, quantity|
    menu.price(dish) * quantity
  end.inject(:+)
end
end
