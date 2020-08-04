require 'minitest/autorun'
require 'minitest/pride'
require './lib/cell'

class CellTest < Minitest::Test

  def test_it_exists
    cell = Cell.new([])
    assert_instance_of Cell, cell
  end

  def test_can_format_braille
    a = ["0.", "..", ".."]
    cell1 = Cell.new(a)
    expected_a = "0.\n" +
               "..\n" +
               ".."
    o = ["0.", ".0", "0."]
    cell2 = Cell.new(o)
    expected_o = "0.\n" +
                 ".0\n" +
                 "0."
                 # require "pry"; binding.pry
    assert_equal expected_a, cell1.make_cell(a)
    assert_equal expected_o, cell2.make_cell(o)

  end
end
