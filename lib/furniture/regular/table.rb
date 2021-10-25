require "furniture/products/table"

module Furniture
  module Regular
    class Table < Furniture::Products::Table
      def material = "plastic"
    end
  end
end