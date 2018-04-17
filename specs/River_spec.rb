require('minitest/autorun')
require('minitest/rg')
require_relative('../River')
require_relative('../Fish')

class TestRiver < MiniTest::Test
  def setup
    @river = River.new('Clyde')
    @fish1 = Fish.new('Garry')
    @fish2 = Fish.new('Lisa')
    @fish3 = Fish.new('Beyonce')
  end

  def test_river_has_name
    assert_equal('Clyde', @river.name())
  end

  def test_river_has_no_fishes
    assert_equal(0, @river.fish_count())
  end

  def test_add_fishes
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    assert_equal(3, @river.fish_count())
  end

  def test_lose_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.lose_fish()
    assert_equal(2, @river.fish_count())
  end
end