require 'rails_helper'

RSpec.describe "ankete/new", :type => :view do
  before(:each) do
    assign(:anketa, Anketa.new(
      :naslov => "MyString",
      :opis => "MyText"
    ))
  end

  it "renders new anketa form" do
    render

    assert_select "form[action=?][method=?]", ankete_path, "post" do

      assert_select "input#anketa_naslov[name=?]", "anketa[naslov]"

      assert_select "textarea#anketa_opis[name=?]", "anketa[opis]"
    end
  end
end
