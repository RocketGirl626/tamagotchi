require('rspec')
require('tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("lil monster")
      expect(my_pet.name()).to(eq("lil monster"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end
  describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
    end
  end
  describe("#time_passes") do
    it("decreases the level of sleep the Tamagotchi has by 1") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.time_passes()
      expect(my_pet.sleep_level()).to(eq(9))
    end
  end
  describe("#time_passes") do
    it("decreases the level of activity the Tamagotchi has by 1") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.time_passes()
      expect(my_pet.activity_level()).to(eq(9))
      end
  end
  describe("#is_alive?") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("rocket girl")
      expect(my_pet.is_alive?()).to(eq(true))
    end
    it("is not dead if the food level is 0 but activity & sleep are > 0") do
      my_pet = Tamagotchi.new("bob")
      my_pet.set_food_level()
      expect(my_pet.is_alive?()).to(eq(true))
    end
  end
  describe("#play") do
    it("sets activity level based on number of minutes user wants to play") do
     my_pet = Tamagotchi.new("kenny")
     my_pet.play(4)
     expect(my_pet.activity_level()).to(eq(5))
   end
 end
 describe("#sleep") do
   it("allows user to set how much sleep") do
     my_pet = Tamagotchi.new("raven")
     my_pet.sleep(5)
     expect(my_pet.sleep_level()).to(eq(4))
   end
 end
end
