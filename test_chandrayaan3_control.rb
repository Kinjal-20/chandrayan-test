require 'minitest/autorun'
require_relative 'chandrayaan3_control'

class TestChandrayaan3 < Minitest::Test
  # testing initialized variables (constructors)
  def test_initial_position_and_direction
    obj = Chandrayaan3.new
    assert_equal([0, 0, 0], obj.get_position)
    assert_equal('N', obj.get_direction)
  end

  # testing move_forward, move_forward
  def test_move_forward
    obj = Chandrayaan3.new
    obj.move_forward
    assert_equal([0, 1, 0], obj.get_position)
  end

  def test_move_backward
    obj = Chandrayaan3.new
    obj.move_backward
    assert_equal([0, -1, 0], obj.get_position)
  end

  # testing turn_left, turn_right, turn_up, turn_down
  def test_turn_left
    obj = Chandrayaan3.new
    obj.turn_left
    assert_equal('W', obj.get_direction)
  end

  def test_turn_right
    obj = Chandrayaan3.new
    obj.turn_right
    assert_equal('E', obj.get_direction)
  end

  def test_turn_up
    obj = Chandrayaan3.new
    obj.turn_up
    assert_equal('U', obj.get_direction)
  end

  def test_turn_down
    obj = Chandrayaan3.new
    obj.turn_down
    assert_equal('D', obj.get_direction)
  end
end

