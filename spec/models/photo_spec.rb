require 'rails_helper'

RSpec.describe Photo, type: :model do
  describe 'relations' do
    it { is_expected.to belong_to(:user) }
  end
end
