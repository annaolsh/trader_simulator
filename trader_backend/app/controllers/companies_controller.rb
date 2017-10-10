class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render json: @companies
  end

  def show
    company = Company.find(params[:id])
    # response = RestClient.get("http://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=#{company.symbol}&interval=1min&apikey=UBW6")
    response = RestClient.get("https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=#{company.symbol}&apikey=UBW6")
    data = JSON.parse(response)
    render json: {company: company, data: data}
  end

end
