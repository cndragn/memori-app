require 'rails_helper'

RSpec.describe "cards/show", type: :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      :original => "Original",
      :target => "Target",
      :language => "Language"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Original/)
    expect(rendered).to match(/Target/)
    expect(rendered).to match(/Language/)
  end
end
