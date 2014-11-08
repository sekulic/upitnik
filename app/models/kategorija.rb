class Kategorija < ActiveRecord::Base
  has_many :ankete  
  validates :ime, presence: true, uniqueness: true
end
