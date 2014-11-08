require 'rails_helper'

RSpec.describe Pitanje, :type => :model do
   it { should validate_presence_of(:anketa_id) }    
   it { should validate_presence_of(:sadrzaj) }      
   it { should belong_to(:anketa) }
end
