class EmailReportsController < ApplicationController
  before_action :set_email_report, only: [:show, :update, :destroy]

  # GET /email_reports
  # GET /email_reports.json
  def index
    @email_reports = EmailReport.all
  end

  # GET /email_reports/1
  # GET /email_reports/1.json
  def show
  end

  # POST /email_reports
  # POST /email_reports.json
  def create
    @email_report = EmailReport.new(email_report_params)

    if @email_report.save
      render :show, status: :created, location: @email_report
    else
      render json: @email_report.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /email_reports/1
  # PATCH/PUT /email_reports/1.json
  def update
    if @email_report.update(email_report_params)
      render :show, status: :ok, location: @email_report
    else
      render json: @email_report.errors, status: :unprocessable_entity
    end
  end

  # DELETE /email_reports/1
  # DELETE /email_reports/1.json
  def destroy
    @email_report.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_report
      @email_report = EmailReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_report_params
      params.require(:email_report).permit(:to, :cc, :title, :body, :type, :attachment)
    end
end
