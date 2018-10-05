class ReportTypesController < ApplicationController
  before_action :set_report_type, only: [:show, :update, :destroy]

  # GET /report_types
  # GET /report_types.json
  def index
    @report_types = ReportType.all
  end

  # GET /report_types/1
  # GET /report_types/1.json
  def show
  end

  # POST /report_types
  # POST /report_types.json
  def create
    @report_type = ReportType.new(report_type_params)

    if @report_type.save
      render :show, status: :created, location: @report_type
    else
      render json: @report_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /report_types/1
  # PATCH/PUT /report_types/1.json
  def update
    if @report_type.update(report_type_params)
      render :show, status: :ok, location: @report_type
    else
      render json: @report_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /report_types/1
  # DELETE /report_types/1.json
  def destroy
    @report_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report_type
      @report_type = ReportType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def report_type_params
      params.require(:report_type).permit(:ReportTypecode, :description, :isusernecessary)
    end
end
