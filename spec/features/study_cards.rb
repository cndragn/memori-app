require 'rails_helper'

RSpec.feature "user can view study card / type in answer", type: :feature do

  it "displays word in English" do
    visit deck_study_path(1)
    expect(page).to have_content "Study Deck"
  end

end
