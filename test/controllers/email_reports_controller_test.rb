require 'test_helper'

class EmailReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email_report = email_reports(:one)
  end

  test "should get index" do
    get email_reports_url, as: :json
    assert_response :success
  end

  test "should create email_report" do
    assert_difference('EmailReport.count') do
      post email_reports_url, params: { email_report: { attachment: @email_report.attachment, body: @email_report.body, cc: @email_report.cc, title: @email_report.title, to: @email_report.to, type: @email_report.type } }, as: :json
    end

    assert_response 201
  end

  test "should show email_report" do
    get email_report_url(@email_report), as: :json
    assert_response :success
  end

  test "should update email_report" do
    patch email_report_url(@email_report), params: { email_report: { attachment: @email_report.attachment, body: @email_report.body, cc: @email_report.cc, title: @email_report.title, to: @email_report.to, type: @email_report.type } }, as: :json
    assert_response 200
  end

  test "should destroy email_report" do
    assert_difference('EmailReport.count', -1) do
      delete email_report_url(@email_report), as: :json
    end

    assert_response 204
  end
end
