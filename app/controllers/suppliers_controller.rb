# frozen_string_literal: true

class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.includes(:stocks).where(stocks: { category_id: params[:category_id] })
  end
end
