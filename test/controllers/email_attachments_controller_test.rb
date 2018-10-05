require 'test_helper'

class EmailAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email_attachment = email_attachments(:one)
  end

  test "should get index" do
    get email_attachments_url, as: :json
    assert_response :success
  end

  test "should create email_attachment" do
    assert_difference('EmailAttachment.count') do
      post email_attachments_url, params: { email_attachment: { attachment: @email_attachment.attachment } }, as: :json
    end

    assert_response 201
  end

  test "should show email_attachment" do
    get email_attachment_url(@email_attachment), as: :json
    assert_response :success
  end

  test "should update email_attachment" do
    patch email_attachment_url(@email_attachment), params: { email_attachment: { attachment: @email_attachment.attachment } }, as: :json
    assert_response 200
  end

  test "should destroy email_attachment" do
    assert_difference('EmailAttachment.count', -1) do
      delete email_attachment_url(@email_attachment), as: :json
    end

    assert_response 204
  end
end
