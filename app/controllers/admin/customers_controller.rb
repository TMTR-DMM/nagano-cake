class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.page(params[:page]).per(20)
  end

  def show
  end

  def edit
  end
end
