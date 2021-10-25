require "furniture/products/chair"

module Furniture
  module Modern
    class Chair < Furniture::Products::Chair
      def leg_count = 3
      def cushion? = false
    end
  end
end