require "furniture/products/table"

module Furniture
  module Vintage
    class Table < Furniture::Products::Table
      def material = "wood"
    end
  end
end