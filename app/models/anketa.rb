class Anketa < ActiveRecord::Base

  validate do
    check_pitanja_number
  end
  belongs_to :kategorija 
  validates :naslov, presence: true
  validates :opis, presence: true
  validates :kategorija_id, presence: true
  has_many :pitanja, dependent: :destroy  
  accepts_nested_attributes_for :pitanja, :reject_if => lambda { |a| a[:sadrzaj].blank? }, :allow_destroy => true
  
  private
  
    def check_pitanja_number
      unless pitanja.size >= 1
        errors.add(:base, "Morate uneti bar jedno pitanje za svaku anketu")
      end
    end        
end
