require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    duplicate_test
  end

  def duplicate_test
    BRANDS << @brand if !Shoe::BRANDS.include?(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end

# learn spec/02_shoe_spec.rb
