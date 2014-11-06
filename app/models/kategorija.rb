class Kategorija < ActiveRecord::Base
  has_many :anketa  
  validates :ime, presence: true, uniqueness: true
end
