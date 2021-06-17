class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :update, :destroy]

  # GET /beers
  def index
    if params[:brewery_id]
      @brewery = Brewery.find(params[:brewery_id])
      @beers = @brewery.beers
    #grab beer ids for nested route
    else
      @beers = Beer.all
    end
    render json: @beers
  end

  # GET /beers/1
  def show
    set_beer
    render json: @beer
  end

  # POST /beers
  def create
    @beer = Beer.new(beer_params)

    if @beer.save
      render json: @beer, status: :created, location: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beers/1
  def update
    if @beer.update(beer_params)
      render json: @beer
    else
      render json: @beer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beers/1
  def destroy
    @beer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer
      @beer = Beer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beer_params
      params.require(:beer).permit(:name, :style, :img, :abv, :ibu, :brewery_id)
    end
end
