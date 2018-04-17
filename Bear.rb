class Bear
  attr_reader(:name)

  def initialize(name)
    @name = name
    @tummy = []    
  end

  def take_fish(river)
    fish = river.lose_fish()
    @tummy << fish
  end

  def food_count()
    @tummy.size()
  end

  def roar()
    "*ʀᴏᴀʀ*"
  end
end