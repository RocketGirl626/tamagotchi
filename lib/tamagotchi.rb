class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
  end
  define_method(:name) do
    @name
  end
  define_method(:food_level) do
    @food_level
  end
  define_method(:sleep_level) do
    @sleep_level
  end
  define_method(:activity_level) do
    @activity_level
  end
  define_method(:time_passes) do
    @food_level = @food_level.-(1)
    @sleep_level = @sleep_level.-(1)
    @activity_level = @activity_level.-(1)
  end
  define_method(:is_alive?) do
    if @food_level > 0 || @sleep_level > 0 || @activity_level > 0
      true
    else
      false
    end
  end

  define_method(:set_food_level) do
      @food_level = 0
  end
  define_method(:play) do |minutes|
    @activity_level = @activity_level.-(minutes)
    self.time_passes()
  end
  define_method(:sleep) do |hours|
    @sleep_level = @sleep_level.-(hours)
    self.time_passes()
  end
  define_method(:feed) do |bottles|
    self.time_passes()
    self.time_passes()
    self.time_passes()
    @food_level = @food_level.+(bottles)
  end
  define_method(:score) do
    score = @food_level.+(@sleep_level).+(@activity_level)
  end
end
