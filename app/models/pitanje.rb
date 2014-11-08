class Pitanje < ActiveRecord::Base
  ODGOVORI_COUNT_MIN = 2
  validate do
    check_odgovori_number
  end
  belongs_to :anketa
  has_many :odgovori, :dependent => :destroy 
  accepts_nested_attributes_for :odgovori, :reject_if => lambda { |a| a[:sadrzaj].blank? }, :allow_destroy => true   

  private
    def odgovori_count_valid?
      odgovori.count >= ODGOVORI_COUNT_MIN
    end

    def check_odgovori_number
      unless odgovori_count_valid?
        errors.add("Morate uneti bar 2 ogovora za svako pitanje")
      end
    end  
end
