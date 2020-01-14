require('minitest/autorun')
require('minitest/reporters')

MiniTest::Reporters.use!
Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../bear.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test
  def setup
    @river = River.new("Amazon")
    @fish= Fish.new('bob')
    @bear = Bear.new("Yogi", 'Grizzly')
  end

  def test_name
    assert_equal('Amazon', @river.name)

  end

  
  def test_add_fish_to_river
    assert_equal(0, @river.fish_count)
  end

  def test_bear_take_fish
    @river.add_fish_to_river(@fish)
    @bear.eat_fish('bob', @river)
    assert_equal(1, @bear.stomach.count())
    assert_equal(0,@river.fishes.count())
  end

  def test_loose_fish
    @river.add_fish_to_river(@fish)
    @river.loose_fish('bob')

    assert_equal(0, @river.fishes.count())
  end

  def test_roar
    assert_equal("ROAR", @bear.roar)

  end

  def test_fish_count
    @river.add_fish_to_river('bob')
    assert_equal(1, @river.fish_count())

  end

end
