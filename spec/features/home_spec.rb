require "rails_helper"

RSpec.describe "/", type: :feature do
  describe "when a user visits root path" do
    before(:each) do
      @songs = create_list(:song, 5)
    end

    it "should be the landing page with the title of the app" do
      visit root_path
      expect(page).to have_content("Viewing Party")
    end

    it "displays a form to select current mood" do
      visit root_path
      
      expect(page).to have_button("Happy")
      expect(page).to have_button("Sad")
      expect(page).to have_button("Neutral")
    end
  end
end