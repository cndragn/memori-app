require 'rails_helper'

RSpec.feature "api gets data", type: :feature do
  before do
    visit "/cards"
  end

  it "displays hello in spanish" do
      expect(page).to have_content "Hola"
    end

end
