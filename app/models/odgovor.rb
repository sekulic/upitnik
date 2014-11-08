class Odgovor < ActiveRecord::Base
  belongs_to :pitanje
  validates :sadrzaj, presence: true  
end
