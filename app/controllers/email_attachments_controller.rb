class EmailAttachmentsController < ApplicationController
  before_action :set_email_attachment, only: [:show, :update, :destroy]

  # GET /email_attachments
  # GET /email_attachments.json
  def index
    @email_attachments = EmailAttachment.all
  end

  # GET /email_attachments/1
  # GET /email_attachments/1.json
  def show
  end

  # POST /email_attachments
  # POST /email_attachments.json
  def create
    @email_attachment = EmailAttachment.new(email_attachment_params)

    if @email_attachment.save
      render :show, status: :created, location: @email_attachment
    else
      render json: @email_attachment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /email_attachments/1
  # PATCH/PUT /email_attachments/1.json
  def update
    if @email_attachment.update(email_attachment_params)
      render :show, status: :ok, location: @email_attachment
    else
      render json: @email_attachment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /email_attachments/1
  # DELETE /email_attachments/1.json
  def destroy
    @email_attachment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_attachment
      @email_attachment = EmailAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_attachment_params
      params.require(:email_attachment).permit(:attachment)
    end
end
