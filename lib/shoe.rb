class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    i = 0

  end

  def duplicate_test
    while i < Shoe::BRANDS.size
      if Shoe::BRANDS[i] != brand
        BRANDS << @brand
      end
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end

# learn spec/02_shoe_spec.rb
