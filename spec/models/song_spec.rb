require "rails_helper"

RSpec.describe Song do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :album }
    it { should validate_presence_of :lyrics }
    it { should validate_presence_of :drink }
    it { should validate_presence_of :status }
  end

  it "finds_songs based on status" do
    song1 = create(:song, status: 3)

    params { status: 3 }
    expect(Song.find_song(3)).to eq(song1)
  end
end