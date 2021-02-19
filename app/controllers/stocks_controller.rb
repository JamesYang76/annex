# frozen_string_literal: true

class StocksController < ApplicationController
  def index
    @stocks = Stock.where(category_id: params[:category_id], supplier_id: params[:supplier_id])
  end
end
