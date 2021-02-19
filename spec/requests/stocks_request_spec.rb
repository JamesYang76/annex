# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Suppliers', type: :request do
  describe 'index' do
    let!(:category) { FactoryBot.create(:category, :with_stock) }
    before { get category_supplier_stocks_url(category, category.suppliers.first) }

    it 'returns a successful HTTP status' do
      expect(response).to have_http_status(:ok)
    end

    it 'renders the Suppliers index page' do
      expect(response.body).to include(I18n.translate('stocks.index.title'))
      expect(response.body).to include(category.stocks.first.name)
    end
  end
end
