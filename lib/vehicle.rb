class Vehicle
  @@vehicles = []

  define_method(:initialize) do |make, model, year|
    @year = year
    @make = make
    @model = model
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end

  define_method(:year) do
    @year
  end

 define_singleton_method(:all) do
   @@vehicles
 end

define_method(:save) do
  @@vehicles.push(self)
end

define_singleton_method(:clear) do
  @@vehicles = []
end

define_method(:age) do
    current_year = Time.new().year()
    current_year.-(@year)
end
  define_method(:worth_buying?) do 
    american_cars = ["charysler", "Ford", "GM"]
    american = american_cars.include?(@make)
    new_enough = age().<=(17)
    american.&(new_enough)
  end
end
