class DataController < ApplicationController
  before_action :set_datum, only: %i[ show update destroy ]

  # GET /data
  def index
    @data = Datum.all

    render json: @data
  end

  # GET /data/1
  def show
    render json: @datum
  end

  # POST /data
  def create
    @datum = Datum.new(datum_params)

    if @datum.save
      render json: @datum, status: :created, location: @datum
    else
      render json: @datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /data/1
  def update
    if @datum.update(datum_params)
      render json: @datum
    else
      render json: @datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /data/1
  def destroy
    @datum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datum
      @datum = Datum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def datum_params
      params.require(:datum).permit(:id, :imgUrl, :vote)
    end
end
