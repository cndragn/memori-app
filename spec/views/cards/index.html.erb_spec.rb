require 'rails_helper'

RSpec.describe "cards/index", type: :view do
  before(:each) do
    assign(:cards, [
      Card.create!(
        :original => "Original",
        :target => "Target",
        :language => "Language"
      ),
      Card.create!(
        :original => "Original",
        :target => "Target",
        :language => "Language"
      )
    ])
  end

  it "renders a list of cards" do
    render
    assert_select "tr>td", :text => "Original".to_s, :count => 2
    assert_select "tr>td", :text => "Target".to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
  end
end
