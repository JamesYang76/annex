require 'rails_helper'

RSpec.describe 'Categories', type: :request do

  describe 'index' do
    let!(:category) { FactoryBot.create(:category) }

    before { get categories_url }

    it 'returns a successful HTTP status' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the Categories index page' do
      expect(response.body).to include(I18n.translate('categories.index.title'))
      expect(response.body).to include(category.name)
    end
  end
end
