require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  def test_restaurant_is_invalid_without_name
    # arrange
    new_restaurant = Restaurant.create(opening_hour: 10, closing_hour: 23)

    # # act
    # is_resto_valid = new_restaurant.valid?
    #
    # # assert
    # expected_value = false
    # assert_equal(expected_value, is_resto_valid)

    # or this:
    # refute(new_restaurant.valid?)

    assert_includes(new_restaurant.errors, :name)

    # refute_empty(new_restaurant.errors)
  end

  def test_restaurant_is_invalid_without_opening_hour
    skip
  end

  def test_restaurant_is_invalid_without_closing_hour
    skip
  end

  def test_restaurant_is_available_when_empty_during_opening_hours
    skip
  end

  def test_restaurant_is_available_when_under_capacity_during_opening_hours
    skip
  end

  def test_restaurant_is_available_later_same_day
    skip
  end

  def test_restaurant_is_unavailable_in_the_past
    skip
  end

  def test_restaurant_is_unavailable_when_full
    skip
  end

  def test_restaurant_is_unavailable_before_opening
    skip
  end

  def test_restaurant_is_available_at_opening
    skip
  end

  def test_restaurant_is_unavailable_at_closing_time
    skip
  end

  def test_restaurant_is_unavailable_past_closing_time
    skip
  end

end
