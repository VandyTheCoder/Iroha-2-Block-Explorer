class AccountsController < ApplicationController
  def index
    @page = params[:index].present? ? params[:index] : 0
    if @page.to_i < 0
      @page = 0
    end

    response = RestClient.get('http://localhost:9090/explorer/api/v1/accounts', {accept: :json, params: { page: @page }})
    @accounts = JSON.parse(response.body)

    response = RestClient.get('http://localhost:9090/explorer/api/v1/asset-definitions/as-string', {accept: :json})
    @asset_definitions = JSON.parse(response.body)
  end

  def show
  end
end
