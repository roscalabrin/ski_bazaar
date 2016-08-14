require 'rails_helper'

RSpec.describe Category, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).on(:create) }
  end
end
