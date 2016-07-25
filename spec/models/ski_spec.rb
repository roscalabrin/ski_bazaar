require 'rails_helper'

RSpec.describe Ski, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:brand) }
    it { is_expected.to validate_presence_of(:width) }
    it { is_expected.to validate_presence_of(:length) }
    it { is_expected.to validate_presence_of(:gender_id) }
    it { is_expected.to validate_presence_of(:category_id) }
    it { should validate_uniqueness_of(:name).scoped_to([:brand, :width, :length, :gender_id, :category_id]) }
  end

  context 'association' do
    it { should have_many(:listings) }
    it { should have_many(:users).through(:listings) }
  end
end
