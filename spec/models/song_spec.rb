require "rails_helper"

RSpec.describe Song do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :album }
    it { should validate_presence_of :lyrics }
    it { should validate_presence_of :drink }
    it { should validate_presence_of :status }
  end
end