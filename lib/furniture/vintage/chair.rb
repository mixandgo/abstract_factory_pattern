require "furniture/products/chair"

module Furniture
  module Vintage
    class Chair < Furniture::Products::Chair
      def leg_count = 1
      def cushion? = false
    end
  end
end