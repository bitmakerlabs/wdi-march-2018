require 'minitest/autorun'
require 'minitest/pride'
require_relative 'temperature.rb'

class TestTemperature < MiniTest::Test
   # tests go in here

   def test_c_to_f_positive
     expected_result = 50
     actual_result = c_to_f(10)
     assert_equal(expected_result, actual_result)
   end

   def test_c_to_f_negative
     expected_result = -4
     actual_result = c_to_f(-20)
     assert_equal(expected_result, actual_result)
   end

   def test_c_to_f_freezing
     expected_result = 32
     actual_result = c_to_f(0)

     assert_equal(expected_result, actual_result)
   end

   def test_f_to_c_positive
     expected_result = 10
     actual_result = f_to_c(50)

     assert_equal(expected_result, actual_result)
   end

   def test_f_to_c_negative
     actual_result = f_to_c(-4)
     expected_result = -20

     assert_equal(expected_result, actual_result)
   end

   def test_f_to_c_freezing
     actual_result = f_to_c(32)
     expected_result = 0

     assert_equal(expected_result, actual_result)
   end

end
