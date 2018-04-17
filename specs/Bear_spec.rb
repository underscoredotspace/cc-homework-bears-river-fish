require('minitest/autorun')
require('minitest/rg')
require_relative('../Bear')
require_relative('../River')
require_relative('../Fish')

class TestBear < MiniTest::Test
  def setup
    @bear = Bear.new('Bazza')
    @river = River.new('Clyde')
    @fish1 = Fish.new('Garry')
    @fish2 = Fish.new('Lisa')
    @fish3 = Fish.new('Beyonce')
  end

  def test_bear_has_name
    assert_equal('Bazza', @bear.name())
  end

  def test_bear_has_empty_tummy
    assert_equal(0, @bear.food_count())
  end

  def test_bear_eats_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)

    @bear.take_fish(@river)
    assert_equal(1, @bear.food_count())
    assert_equal(2, @river.fish_count())
  end

  def test_bear_roars
    assert_equal("*ʀᴏᴀʀ*", @bear.roar())
  end
end