require 'test_helper'

class CellTest < MiniTest::Unit::TestCase

  # def setup
  #   @cell = Cell.new
  # end

  def test_create_cell
    @cell = Cell.new(0, 1)

    assert_respond_to @cell, :x
    assert_respond_to @cell, :y
    assert_equal 0, @cell.x
    assert_equal 1, @cell.y
  end

  def test_cell_state
    @cell = Cell.new(0, 1)
    assert_equal false, @cell.alive
  end

  def test_toggle_state_to_true
    @cell = Cell.new(0, 1)
    @cell.toggle_state

    assert_equal true, @cell.alive
  end

  def test_toggle_state_to_false
    @cell = Cell.new(0, 1)
    @cell.toggle_state
    @cell.toggle_state

    assert_equal false, @cell.alive
  end

  def test_is_neighbor
    @cell = Cell.new(0, 1)
    @neighbor = Cell.new(1, 2)
    assert_equal true, @cell.is_neighbor?(@neighbor)
  end

  def test_is_neighbor_false
    @cell = Cell.new(0, 1)
    @neighbor = Cell.new(2, 0)
    assert_equal false, @cell.is_neighbor?(@neighbor)
  end

  def is_alive
    @cell = Cell.new(0,1)
    assert_equal false, @cell.alive?
  end

  def is_not_alive
    @cell = Cell.new(0,1)
    @cell.toggle_state
    assert_equal true, @cell.alive?
  end

end
