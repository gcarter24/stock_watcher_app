class Api::StocksController < ApplicationController
  def index
    @stocks = Stock.all
    render "index.json.jb"
  end

  def search
    @stocks = Stock.all.where("name ILIKE ?", "%" + params[:name] + "%")
    render json: @stocks.as_json
  end

  def stocks
    response = HTTP.get("https://cloud.iexapis.com/stable/stock/#{params[:search]}/chart/30d?token=#{Rails.application.credentials.secret_api[:api_key]}")
    render json: response.parse
  end
end
