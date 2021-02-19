# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Suppliers', type: :request do
  describe 'index' do
    let!(:category) { FactoryBot.create(:category, :with_stock) }

    before { get category_suppliers_url(category) }

    it 'returns a successful HTTP status' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the Suppliers index page' do
      expect(response.body).to include(I18n.translate('suppliers.index.title'))
      expect(response.body).to include(category.suppliers.first.name)
    end
  end
end
