require 'rails_helper'

RSpec.describe Kategorija, :type => :model do
   it { should validate_presence_of(:ime) }   
   it { should validate_uniqueness_of(:ime) }  
   it { should have_many(:ankete) }
end
