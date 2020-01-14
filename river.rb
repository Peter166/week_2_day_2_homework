class River

  attr_reader :name, :fishes


  def initialize(name)
    @name = name
    @fishes = []
  end


  def add_fish_to_river(fish)
    @fishes << fish
  end

  def fish_count()
    return @fishes.count()
  end

  def loose_fish(name)
    for fish in @fishes
      if fish.name == name
        @fishes.delete(fish)
      end
    end
  end





end
