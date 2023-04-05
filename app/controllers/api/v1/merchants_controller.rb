class Api::V1::MerchantsController < ApplicationController
  def index
    @facade = DatabaseFacade.new(params)
  end

  def show
    @facade = DatabaseFacade.new(params)
  end
end