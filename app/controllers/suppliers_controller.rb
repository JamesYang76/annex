class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.joins(:stocks).where(stocks: { category_id: params[:category_id] })
  end
end
