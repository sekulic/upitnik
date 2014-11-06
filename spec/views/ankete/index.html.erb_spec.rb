require 'rails_helper'

RSpec.describe "ankete/index", :type => :view do
  before(:each) do
    assign(:ankete, [
      Anketa.create!(
        :naslov => "Naslov",
        :opis => "MyText"
      ),
      Anketa.create!(
        :naslov => "Naslov",
        :opis => "MyText"
      )
    ])
  end

  it "renders a list of ankete" do
    render
    assert_select "tr>td", :text => "Naslov".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
