class BreweriesController < ApplicationController
  before_action :set_brewery, only: [:show, :update, :destroy]

  # GET /breweries
  def index
    # if params[:brewery_id]
    #   @brewery = Brewery.find(params[:brewery_id])
    #   @breweries = @brewery.beers
    # #grab beer ids for nested route
    # else
      @breweries = Brewery.all
  
    #end
    render json: @breweries
  end

  # GET /breweries/1
  def show
    
    render json: @brewery
  end

  # POST /breweries
  def create
    @brewery = Brewery.new(brewery_params)

    if @brewery.save
      render json: @brewery, status: :created, location: @brewery
    else
      render json: @brewery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /breweries/1
  def update
    if @brewery.update(brewery_params)
      render json: @brewery
    else
      render json: @brewery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /breweries/1
  def destroy
    @brewery.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brewery
      @brewery = Brewery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brewery_params
      params.require(:brewery).permit(:img, :name, :location)
    end
end
