class Per < ActiveRecord::Base
  attr_accessible :name
  has_many :joint2s
  has_many :brevets, :through => :joint2s
end
