require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }

    # Test valid email
    it { is_expected.to allow_value('mike.baguncinha@la.gov.us').for(:email) }
    it { is_expected.to allow_value('mike.baguncinha@la.gov').for(:email) }
    it { is_expected.to allow_value('mike.baguncinha@gmail.us').for(:email) }

    # Test invalid email
    it { is_expected.to_not allow_value('mike.baguncinha@la.gov.u').for(:email) }
    it { is_expected.to_not allow_value('mike baguncinha@la.gov.us').for(:email) }
    it { is_expected.to_not allow_value('mike.baguncinha@com').for(:email) }
  end
end