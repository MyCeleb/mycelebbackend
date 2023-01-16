class Api::V1::RatesController < ApplicationController
  before_action :set_rate, only: %i[ show update destroy ]
  skip_before_action :authorized

  # GET /rates
  def index
    @rates = Rate.all

    render json: @rates , include: [:profile] 
  end

  # GET /rates/1
  def show
    render json: @rate
  end

  # POST /rates
  def create
    @rate = Rate.create(rate_params)
    render json: @rate

  
  end

  # PATCH/PUT /rates/1
  def update
    if @rate.update(rate_params)
      render json: @rate
    else
      render json: @rate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rates/1
  def destroy
    @rate.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rate
      @rate = Rate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rate_params
      params.require(:rate).permit(:description, :price, :profile_id)
    end
end
