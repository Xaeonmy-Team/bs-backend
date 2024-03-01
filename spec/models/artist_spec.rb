require 'rails_helper'

RSpec.describe Artist, type: :model do
  let(:user) { User.create(
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'password'
      )
    }
  end
end
