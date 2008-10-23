class Department < ActiveRecord::Base
  has_many :hardware_assigns
  has_many :computers, :through => :hardware_assigns
  
end
