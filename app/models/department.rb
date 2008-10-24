class Department < ActiveRecord::Base
  has_many :hardware_assigns
  has_many :computers, :through => :hardware_assigns
  has_many :users, :through => :hardware_assigns
  
  named_scope :dept_name, lambda { |dept_name|
     { :conditions => { :name => dept_name } }
  }
end
