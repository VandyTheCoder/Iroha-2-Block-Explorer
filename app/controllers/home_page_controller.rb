class HomePageController < ApplicationController
  def index
    @page = params[:index].present? ? params[:index] : 0
    if @page.to_i < 0
      @page = 0
    end
    response = RestClient.get('http://localhost:9090/explorer/api/v1/blocks', {accept: :json, params: { page: @page }})
    @blocks = JSON.parse(response.body)
  end

  def show
    hash = params[:hash]
    response = RestClient.get('http://localhost:9090/explorer/api/v1/transactions', {accept: :json, params: { hash: hash }})
    @transaction = JSON.parse(response.body)
  end
end
