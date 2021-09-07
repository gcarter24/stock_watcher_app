class Api::StocksController < ApplicationController
  def index
    @stocks = Stock.all
    render "index.json.jb"
    # response = HTTP.get("https://sandbox.iexapis.com/stable/stock/IBM/quote?token=#{Rails.application.credentials.secret_api[:api_key]}")
    # render json: response.parse
  end

  def search
    @stocks = Stock.all.where("name ILIKE ?", "%" + params[:name] + "%")
    render json: @stocks.as_json
  end

  def stocks
    response = HTTP.get("https://sandbox.iexapis.com/stable/stock/IBM/quote?token=#{Rails.application.credentials.secret_api[:api_key]}")
    render json: response.parse
  end
end
