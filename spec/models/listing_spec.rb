require 'rails_helper'

RSpec.describe Listing, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:image) }
  end
end
