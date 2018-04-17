require('minitest/autorun')
require('minitest/rg')
require_relative('../Bear')

class TestBear < MiniTest::Test
  def setup
    @bear1 = Bear.new('Bazza')
  end

  def test_bear_has_name
    assert_equal('Bazza', @bear1.name())
  end

  def test_bear_has_empty_tummy
    assert_equal([], @bear1.tummy())
  end
end