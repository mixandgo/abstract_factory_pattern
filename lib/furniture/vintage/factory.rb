require "furniture/base"
require "furniture/vintage/chair"
require "furniture/vintage/table"

module Furniture
  module Vintage
     class Factory < Furniture::Base
       def create_chair = Furniture::Vintage::Chair.new
       def create_table = Furniture::Vintage::Table.new
     end
  end
end