require 'rails_helper'

RSpec.describe "scores/index", type: :view do
  before(:each) do
    assign(:scores, [
      Score.create!(
        :correct => 2,
        :wrong => 3
      ),
      Score.create!(
        :correct => 2,
        :wrong => 3
      )
    ])
  end

  it "renders a list of scores" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
