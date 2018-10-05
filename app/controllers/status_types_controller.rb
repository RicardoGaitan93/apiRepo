class StatusTypesController < ApplicationController
  before_action :set_status_type, only: [:show, :update, :destroy]

  # GET /status_types
  # GET /status_types.json
  def index
    @status_types = StatusType.all
  end

  # GET /status_types/1
  # GET /status_types/1.json
  def show
  end

  # POST /status_types
  # POST /status_types.json
  def create
    @status_type = StatusType.new(status_type_params)

    if @status_type.save
      render :show, status: :created, location: @status_type
    else
      render json: @status_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /status_types/1
  # PATCH/PUT /status_types/1.json
  def update
    if @status_type.update(status_type_params)
      render :show, status: :ok, location: @status_type
    else
      render json: @status_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /status_types/1
  # DELETE /status_types/1.json
  def destroy
    @status_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_type
      @status_type = StatusType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_type_params
      params.require(:status_type).permit(:StatusTypecode, :description, :ispending)
    end
end
