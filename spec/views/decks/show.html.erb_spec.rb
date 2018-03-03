require 'rails_helper'

RSpec.describe "decks/show", type: :view do
  before(:each) do
    @deck = assign(:deck, Deck.create!(
      :language => "Language",
      :title => "Title",
      :description => "Description",
      :category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
