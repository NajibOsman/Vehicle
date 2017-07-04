require('rspec')
 require('vehicle')

 describe(Vehicle) do
   before() do
     Vehicle.clear()
   end
   describe("#make") do
     it("returns the make of the vehicle") do
       test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
       expect(test_vehicle.make()).to(eq("Toyota"))
      end
     end

     describe("#model") do
    it("returns the model of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      expect(test_vehicle.model()).to(eq("Prius"))
    end
  end

  describe("#year") do
    it("returns the year of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      expect(test_vehicle.year()).to(eq(2000))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Vehicle.all()).to(eq([]))
     end
    end

  describe("#save") do
    it("adds a vehicle to the array of a saved vehicles") do
      test_vehicle =Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

   describe(".clear") do
     it("empties out all of the saved vehicles") do
       test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
       test_vehicle.clear()
       expect(Vehicle.all()).to(eq([]))
     end
   end

   describe("#age") do
     it("returns the vehicles age") do
       test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
       expect(test_vehicle.age()).to(eq(17))
      end
      describe("#worth_buying?") do
        it("returns false if the is not american made and younger than 16 years old") do
          test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
          expect(test_vehicle.worth_buying?()).to(eq(false))
        end
      end
     end
   end
