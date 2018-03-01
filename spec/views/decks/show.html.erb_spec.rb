require 'rails_helper'

RSpec.describe "decks/show", type: :view do
  before(:each) do
    @deck = assign(:deck, Deck.create!(
      :language => "Language",
      :title => "Title",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
  end
end
