require "furniture/base"
require "furniture/modern/chair"
require "furniture/modern/table"

module Furniture
  module Modern
     class Factory < Furniture::Base
       def create_chair = Furniture::Modern::Chair.new
       def create_table = Furniture::Modern::Table.new
     end
  end
end