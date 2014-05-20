class Brevet < ActiveRecord::Base
  attr_accessible :name
  has_many :joint2s
  has_many :pers, :through => :joint2s
end
