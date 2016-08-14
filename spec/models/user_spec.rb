require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_presence_of(:password) }

    it do
      should validate_uniqueness_of(:username).with_message('The username you selected is already in use. Please choose another username.')
    end
  end

  context 'association' do
    it { should have_many(:listings) }
    it { should have_many(:skis).through(:listings) }
  end
end
