class Bear

  attr_reader :name, :stomach, :roar


  def initialize(name, type)
    @name = name
    @type = type
    @roar = "ROAR"
    @stomach = []
  end


  def eat_fish(name, river)
    for fish in river.fishes
      if fish.name == name
        @stomach << fish
        river.loose_fish(name)
      end
    end





  end
end
