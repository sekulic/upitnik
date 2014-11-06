require 'rails_helper'

RSpec.describe Kategorija, :type => :model do
   it "is invalid without a Ime" do
     FactoryGirl.build(:kategorija, ime: nil).should_not be_valid 
   end  
   it { should validate_presence_of(:ime) }   
   it { should validate_uniqueness_of(:ime) }  
   it { should have_many(:anketa) }
end
