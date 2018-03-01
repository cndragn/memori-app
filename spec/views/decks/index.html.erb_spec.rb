require 'rails_helper'

RSpec.describe "decks/index", type: :view do
  before(:each) do
    assign(:decks, [
      Deck.create!(
        :language => "Language",
        :title => "Title",
        :description => "Description"
      ),
      Deck.create!(
        :language => "Language",
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of decks" do
    render
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
