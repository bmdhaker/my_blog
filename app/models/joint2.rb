class Joint2 < ActiveRecord::Base
  attr_accessible :appointment_date, :per_id, :brevet_id, :name
  belongs_to :per
  belongs_to :brevet
end
