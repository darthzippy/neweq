class Computer < ActiveRecord::Base
  
  validates_presence_of :control, :on => :create, :message => "can't be blank"
  validates_length_of :control, :within => 5..5, :on => :create, :message => "must be present"
  validates_numericality_of :control, :on => :create, :message => "is not a number"
  validates_presence_of :serial, :on => :create, :message => "can't be blank"
  validates_presence_of :model, :on => :create, :message => "can't be blank"
  
  has_many :hardware_assigns
  has_many :users, :through => :hardware_assigns
  has_many :departments, :through => :hardware_assigns
end
