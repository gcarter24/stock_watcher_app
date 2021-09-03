class Api::StocksController < ApplicationController
  def index
    @stocks = Stock.all
    render "index.json.jb"
  end

  def search
    @stocks = Stock.all.where("name ILIKE ?", "%" + params[:name] + "%")
    render json: @stocks.as_json
  end
end
