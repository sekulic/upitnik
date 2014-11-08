class Anketa < ActiveRecord::Base
  PITANJA_COUNT_MIN = 1
  validate do
    check_pitanja_number
  end
  belongs_to :kategorija 
  validates :naslov, presence: true
  validates :opis, presence: true
  validates :kategorija_id, presence: true
  has_many :pitanja, :dependent => :destroy  
  accepts_nested_attributes_for :pitanja, :reject_if => lambda { |a| a[:sadrzaj].blank? }, :allow_destroy => true
  
  private
    def pitanja_count_valid?
      pitanja.count >= PITANJA_COUNT_MIN
    end

    def check_pitanja_number
      unless pitanja_count_valid?
        errors.add("Morate uneti bar jedno pitanje za svaku anketu")
      end
    end        
end
