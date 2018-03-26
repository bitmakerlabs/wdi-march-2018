
class Pizza

  def initialize(new_toppings)
    @baked = false
    @slices = 0
    @toppings = new_toppings
  end

  def bake
    @baked = true
  end

  def cut
    if @baked
      @slices += 2
    end
  end

  def eat
    if @baked && @slices > 0
      @slices -= 1
    end
  end
end

# my_pizza = Pizza.new(['cheese', 'pepperoni', 'green peppers'])
# puts my_pizza.inspect
#
# my_pizza.bake
# puts my_pizza.inspect
#
# my_pizza.cut
# puts my_pizza.inspect
#
# my_pizza.eat
# my_pizza.eat
# my_pizza.eat
# puts my_pizza.inspect
#
# my_pizza2 = Pizza.new(['cheese', 'onions', 'mushrooms'])
# puts my_pizza2.inspect
#
# my_pizza2.bake
# puts my_pizza2.inspect

# my_pizza2 = Pizza.new
# puts my_pizza2
