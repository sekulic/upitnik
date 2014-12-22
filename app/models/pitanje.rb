class Pitanje < ActiveRecord::Base
  validate do
    check_odgovori_number
  end
  belongs_to :anketa
  has_many :odgovori, :dependent => :destroy 
  accepts_nested_attributes_for :odgovori, :reject_if => lambda { |a| a[:sadrzaj].blank? }, :allow_destroy => true   

  private

    def check_odgovori_number
      unless odgovori.size >= 2
        errors.add :odgovori, ' - Morate imati minimum dva ponudjena odgovora na svako pitanje'
      end
    end  
end
