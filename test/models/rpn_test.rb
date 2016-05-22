require 'test_helper'

class RpnTest < ActiveSupport::TestCase
  rpn = Rpn.new
  test "the truth sum" do
    # assert true
    assert_equal(rpn.calculate("2,3,+",","),5)
  end
  test "the truth sum1" do
    # assert true
    assert_equal(rpn.calculate("2,3,*",","),6)
  end
  test "the truth sum2" do
    # assert true
    assert_equal(rpn.calculate("2,3,4,+",","),27)
  end
  test "the truth sum3" do
    # assert true
    assert_equal(rpn.calculate("1,2,3,4,+",","),127)
  end
  test "the truth sum4" do
    # assert true
    assert_equal(rpn.calculate("1,2,3,4,+,8",","),"Last string should be an operator")
  end
  test "the truth sum5" do
    # assert true
    assert_equal(rpn.calculate("1,2,3,4,S,+",","),"Only numbers are allowed")
  end
  test "the truth sum6" do
    # assert true
    assert_equal(rpn.calculate("1,2,3,+,-"),-4)
  end
  test "the truth sum7" do
    # assert true
    assert_equal(rpn.calculate("1 2 3 %"," "),1.23)
  end
  test "the truth sum8" do
    # assert true
    assert_equal(rpn.calculate("1 2 3 + 9 9 - 1 -"," "),4)
  end
  # test "the truth sum9" do
  #   # assert true
  #   
  #   assert_equal(rpn.calculate("1 2 3 + 9 2 * 1 -"," "),317)
  # end
  test "the truth sum10" do
    # assert true
    assert_equal(rpn.calculate("1 2 3 4 5"," "),12345)
  end
  test "the truth sum11" do
    # assert true
    assert_equal(rpn.calculate("*"," "),"First letter can't be an operator")
  end
end
