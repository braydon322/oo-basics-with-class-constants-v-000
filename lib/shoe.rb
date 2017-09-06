class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    duplicate_test
  end

  def duplicate_test

    if Shoe::BRANDS.size == 0
      BRANDS << @brand
    else
      i = 0
      while i < Shoe::BRANDS.size
        if Shoe::BRANDS[i] != brand
          binding.pry
          BRANDS << @brand
        end
        i+=1
      end
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end

# learn spec/02_shoe_spec.rb
