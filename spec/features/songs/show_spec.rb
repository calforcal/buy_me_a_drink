require "rails_helper"

RSpec.describe "show page" do
  describe "when a user visits root path" do
    it "and selects a mood, they're redirected to show page" do
      visit root_path

      click_button("Happy")

      expect(current_page).to eq()
    end
  end
end