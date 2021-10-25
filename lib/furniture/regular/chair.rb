require "furniture/products/chair"

module Furniture
  module Regular
    class Chair < Furniture::Products::Chair
      def leg_count = 4
      def cushion? = true
    end
  end
end