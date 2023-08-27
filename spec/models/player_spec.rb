require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'validations' do
    let!(:existing_player) { create_list(:player, 3) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:nickname) }
    it { is_expected.to validate_uniqueness_of(:nickname) }
    it { is_expected.to validate_presence_of(:status) }
    it { is_expected.to validate_presence_of(:position) }

    it { is_expected.to define_enum_for(:status).with_values({ titular: 0, reserva: 1 }) }
    it { is_expected.to define_enum_for(:position).with_values({ goleiro: 0, linha: 1 }) }
  end
end
