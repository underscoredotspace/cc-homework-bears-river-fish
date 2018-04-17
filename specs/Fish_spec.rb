require('minitest/autorun')
require('minitest/rg')
require_relative('../Fish')

class TestFish < MiniTest::Test
  def setup
    @fish1 = Fish.new('Garry')
    @fish2 = Fish.new('Lisa')
    @fish3 = Fish.new('Beyonce')
  end

  def test_fish_has_name
    assert_equal('Beyonce', @fish3.name())
  end
end