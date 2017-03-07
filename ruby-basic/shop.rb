module CafeModule
  attr_accessor :menus

  def print_menus
    puts "menus: #{menus.join(',')}"
  end
end

class AnimalCafe < Shop
  include AnimalModule
  include CafeModule

  def print_details
    super
    print_animals
    print_menus
  end
end