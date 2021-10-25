# Product interface
class Chair
  def leg_count = raise('not implemented')
  def cushion? = raise('not implemented')
end

# Product interface
class Table
  def material = raise('not implemented')
end

# Modern (product)
class ModernChair < Chair
  def leg_count = 3
  def cushion? = false
end

# Vintage (product)
class VintageChair < Chair
  def leg_count = 4
  def cushion? = true
end

# Modern (product)
class ModernTable < Table
  def material = "glass"
end

# Vintage (product)
class VintageTable < Table
  def material = "wood"
end

# Abstract Factory
# The abstract class defines the interface of the variant types
# Makes sure all subclases have the exact same behavior
class FurnitureFactory
  # Returns an abstract Chair
  def create_chair = raise('not implemented')

  # Returns an abstract Table
  def create_table = raise('not implemented')
end

# The variant type class decides the instance type
class ModernFurnitureFactory < FurnitureFactory
  def create_chair = ModernChair.new
  def create_table = ModernTable.new
end

# The variant type class decides the instance type
class VintageFurnitureFactory < FurnitureFactory
  def create_chair = VintageChair.new
  def create_table = VintageTable.new
end

def client_code(factory)
  chair = factory.create_chair
  table = factory.create_table

  puts "Chair has #{chair.leg_count} legs and #{chair.cushion? ? '' : 'no '} cushion."
  puts "Table is made of #{table.material}."
end

# In action!
modern_factory = ModernFurnitureFactory.new
vintage_factory = VintageFurnitureFactory.new
client_code(modern_factory)
puts "-" * 72
client_code(vintage_factory)