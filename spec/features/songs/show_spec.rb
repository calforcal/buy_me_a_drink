require "rails_helper"

RSpec.describe "show page" do
  describe "when a user visits root path" do
    it "and selects a mood, they're redirected to show page" do
      visit root_path

      # click_button("Happy")

      # expect(current_path).to eq("songs_path")
    end
  end

  describe "when a user visits the show path" do
    before(:each) do
      visit root_path

      # click_button("Happy")

      # expect(current_path).to eq("songs_path")
    end

    it "they see a song title", :vcr do
      song = Song.create!(title: "bad blood", album: "reputation", lyrics: "whiskey", drink: "whiskey", status: 3)
      visit "/songs?status=3"
      expect(page).to have_css(".title")
      expect(page).to have_css(".album")
      expect(page).to have_css(".lyrics")
      expect(page).to have_css(".drink")
    end
  end
end