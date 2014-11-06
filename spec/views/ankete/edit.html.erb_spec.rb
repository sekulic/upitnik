require 'rails_helper'

RSpec.describe "ankete/edit", :type => :view do
  before(:each) do
    @anketa = assign(:anketa, Anketa.create!(
      :naslov => "MyString",
      :opis => "MyText"
    ))
  end

  it "renders the edit anketa form" do
    render

    assert_select "form[action=?][method=?]", anketa_path(@anketa), "post" do

      assert_select "input#anketa_naslov[name=?]", "anketa[naslov]"

      assert_select "textarea#anketa_opis[name=?]", "anketa[opis]"
    end
  end
end
