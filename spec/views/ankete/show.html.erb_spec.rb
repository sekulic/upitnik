require 'rails_helper'

RSpec.describe "ankete/show", :type => :view do
  before(:each) do
    @anketa = assign(:anketa, Anketa.create!(
      :naslov => "Naslov",
      :opis => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Naslov/)
    expect(rendered).to match(/MyText/)
  end
end
