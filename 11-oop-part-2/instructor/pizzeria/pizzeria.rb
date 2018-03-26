
require_relative('pizza')


class Pizzeria

  @@number_of_pizzas = 0
  @@company_name = 'Awesome Galaxy Pizza'

  def initialize(owner_name)
    @num_pizzas_sold = 0
    @open = true
    # close
    @stock = 5
    @owner_name = owner_name
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def restock
    if !@open
      @stock += 5
    end
  end

  def order(toppings) # take toppings
    # only do if there is stock and pizzeria is open
    if @stock > 0 && @open
      # stock reduced by one
      @stock -= 1
      @@number_of_pizzas += 1
      @num_pizzas_sold += 1
      # make pizza
      new_pizza = Pizza.new(toppings)
      # bake pizza
      new_pizza.bake
      # cut pizza
      4.times do
        new_pizza.cut
      end
      # return a pizza
      return new_pizza
    end
  end

  # EXAMPLE:
    # instance methods can access instance and class variables
    # class methods can only access class variables

  def self.get_numbers
    return @@number_of_pizzas
  end

  def get_company_numbers
    return @@number_of_pizzas
  end

  def get_local_numbers
    return @num_pizzas_sold
  end

  def get_name
    return "#{@owner_name}'s #{@@company_name}"
  end

end

puts Pizzeria.get_numbers

super_pizza = Pizzeria.new('Sarah')
puts super_pizza.get_name
# puts super_pizza.get_company_numbers
puts super_pizza.inspect

super_pizza.restock
puts super_pizza.inspect

super_pizza.open
puts super_pizza.inspect


my_pizza = super_pizza.order(['cheese', 'pepperoni', 'green peppers'])
puts my_pizza.inspect
puts super_pizza.inspect

my_other_pizza = super_pizza.order(['cheese'])
puts my_other_pizza.inspect

8.times do
  my_pizza.eat
end
puts my_pizza.inspect

flavour_pizza = Pizzeria.new('Gerry')
puts flavour_pizza.get_name
flavour_pizza.order(['cheese'])



puts Pizzeria.get_numbers
puts super_pizza.get_local_numbers
puts super_pizza.get_company_numbers
