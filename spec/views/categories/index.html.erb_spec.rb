require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :label => "Label"
      ),
      Category.create!(
        :label => "Label"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
  end
end
