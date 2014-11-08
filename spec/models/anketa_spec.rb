require 'rails_helper'

RSpec.describe Anketa, :type => :model do
   it { should validate_presence_of(:naslov) }    
   it { should validate_presence_of(:opis) }
   it { should validate_presence_of(:kategorija_id) }        
   it { should belong_to(:kategorija) }
   it { should have_many(:pitanja) }   
end
