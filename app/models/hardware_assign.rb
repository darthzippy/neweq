class HardwareAssign < ActiveRecord::Base
  belongs_to :computer
  belongs_to :department
  belongs_to :user
end
