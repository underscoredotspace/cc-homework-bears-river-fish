require('minitest/autorun')
require('minitest/rg')
require_relative('../River')

class TestRiver < MiniTest::Test
  def setup
    @river = River.new('Clyde')
  end

  def test_river_has_name
    assert_equal('Clyde', @river.name())
  end

  def test_river_has_no_fishes
    assert_equal([], @river.fishes())
  end
end