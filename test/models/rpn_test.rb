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
    assert_equal(rpn.calculate("1 2 3 + -"," "),-4)
  end
  test "the truth sum3" do
    # assert true
    assert_equal(rpn.calculate("12,3,+",","),15)
  end
  test "the truth sum4" do
    # assert true
    assert_equal(rpn.calculate("4,+,8",","),"Only numbers are allowed. Your first number should be number.")
  end
  test "the truth sum5" do
    # assert true
    assert_equal(rpn.calculate("1,2,3,4,S,+",","),"Only numbers are allowed. Your first number should be number.")
  end
  test "the truth sum6" do
    # assert true
    assert_equal(rpn.calculate("50 %"," "),0.5)
  end
  test "the truth sum7" do
    # assert true
    assert_equal(rpn.calculate("3 4 ^"," "),81)
  end
  test "the truth sum8" do
    # assert true
    assert_equal(rpn.calculate("5 1 2 + 4 * + 3 -"," "),14)
  end
  test "the truth sum9" do
    # assert true
    assert_equal(rpn.calculate("-"," "),"Only numbers are allowed. Your first number should be number.")
  end
  test "the truth sum10" do
    # assert true
    assert_equal(rpn.calculate("*"," "),"Only numbers are allowed. Your first number should be number.")
  end
end
