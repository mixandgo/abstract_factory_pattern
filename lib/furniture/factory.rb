require "furniture/vintage/factory"
require "furniture/modern/factory"
require "furniture/regular/factory"

module Furniture
  class Factory
    TYPES = {
      vintage: Vintage::Factory,
      modern: Modern::Factory
    }

    def self.for(type)
      (TYPES[type] || Regular::Factory).new
    end
  end
end
