require 'rails_helper'

RSpec.describe Machine_snacks, type: :model do
  describe 'validations' do
    it { should belong_to :machines }
    it { should belong_to :snacks }
  end
end
