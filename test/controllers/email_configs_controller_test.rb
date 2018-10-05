require 'test_helper'

class EmailConfigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email_config = email_configs(:one)
  end

  test "should get index" do
    get email_configs_url, as: :json
    assert_response :success
  end

  test "should create email_config" do
    assert_difference('EmailConfig.count') do
      post email_configs_url, params: { email_config: { EmailConfigcode: @email_config.EmailConfigcode, passwordemail: @email_config.passwordemail, port: @email_config.port, server: @email_config.server, useremail: @email_config.useremail } }, as: :json
    end

    assert_response 201
  end

  test "should show email_config" do
    get email_config_url(@email_config), as: :json
    assert_response :success
  end

  test "should update email_config" do
    patch email_config_url(@email_config), params: { email_config: { EmailConfigcode: @email_config.EmailConfigcode, passwordemail: @email_config.passwordemail, port: @email_config.port, server: @email_config.server, useremail: @email_config.useremail } }, as: :json
    assert_response 200
  end

  test "should destroy email_config" do
    assert_difference('EmailConfig.count', -1) do
      delete email_config_url(@email_config), as: :json
    end

    assert_response 204
  end
end
