require 'rails_helper'

RSpec.describe "ankete/edit", :type => :view do
  let(:kategorija) { FactoryGirl.create(:kategorija) }    
  before(:each) do  
    @anketa = view.stub(:anketa, Anketa.create!(   
      :naslov => "MyString",
      :opis => "MyText",
      :kategorija_id => kategorija.id
    ))
  end

end
