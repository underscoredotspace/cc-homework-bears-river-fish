class River
  attr_reader(:name, :fishes)

  def initialize(name)
    @name = name
    @fishes = []
  end

  def add_fish(fish)
    @fishes << fish
  end

  def fish_count()
    @fishes.count()
  end

  def lose_fish()
    fish = @fishes.sample(1)
    @fishes.delete(fish)
    return fish
  end
end