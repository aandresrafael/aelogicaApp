require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validates email' do
    context 'when exist duplicated' do
      before do
        User.create(email: 'test@test.com')
      end

      it 'shold validate' do
        user = User.create(email: 'test@test.com')
        expect(user.errors[:email]).to include('has already been taken')
      end
    end
  end

  context 'Loading data' do
    before do
      User.destroy_all
      EtlAelogica::UserEtl.call
    end

    it 'should load user data correctly' do
      expect(User.all).to_not be_empty
    end
  end
end
