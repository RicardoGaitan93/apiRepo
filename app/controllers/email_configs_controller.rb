class EmailConfigsController < ApplicationController
  before_action :set_email_config, only: [:show, :update, :destroy]

  # GET /email_configs
  # GET /email_configs.json
  def index
    @email_configs = EmailConfig.all
  end

  # GET /email_configs/1
  # GET /email_configs/1.json
  def show
  end

  # POST /email_configs
  # POST /email_configs.json
  def create
    @email_config = EmailConfig.new(email_config_params)

    if @email_config.save
      render :show, status: :created, location: @email_config
    else
      render json: @email_config.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /email_configs/1
  # PATCH/PUT /email_configs/1.json
  def update
    if @email_config.update(email_config_params)
      render :show, status: :ok, location: @email_config
    else
      render json: @email_config.errors, status: :unprocessable_entity
    end
  end

  # DELETE /email_configs/1
  # DELETE /email_configs/1.json
  def destroy
    @email_config.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_config
      @email_config = EmailConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_config_params
      params.require(:email_config).permit(:EmailConfigcode, :server, :port, :useremail, :passwordemail)
    end
end
