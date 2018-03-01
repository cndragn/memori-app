require 'rails_helper'

RSpec.describe "cards/new", type: :view do
  before(:each) do
    assign(:card, Card.new(
      :original => "MyString",
      :target => "MyString",
      :language => "MyString"
    ))
  end

  it "renders new card form" do
    render

    assert_select "form[action=?][method=?]", cards_path, "post" do

      assert_select "input[name=?]", "card[original]"

      assert_select "input[name=?]", "card[target]"

      assert_select "input[name=?]", "card[language]"
    end
  end
end
