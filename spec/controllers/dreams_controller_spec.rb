require 'rails_helper'

RSpec.describe DreamsController, type: :controller do
  describe 'Dream Controllers testing' do
    login_user

    it 'Should be able to log in and have a 200 status code' do
      get :index
      expect(response.status).to eq(200)
    end
    it 'Should be equal to ActiveRecord::Relation class' do
      get :index
      expect(assigns(:dreams).class.name).to eq 'ActiveRecord::Relation'
    end
    it 'Successful dream creation should have a 200 status code' do
      create(:dream, id: '1')
      expect(response.status).to eql(200)
    end
  end
end
