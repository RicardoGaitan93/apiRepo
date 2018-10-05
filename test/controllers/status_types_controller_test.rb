require 'test_helper'

class StatusTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_type = status_types(:one)
  end

  test "should get index" do
    get status_types_url, as: :json
    assert_response :success
  end

  test "should create status_type" do
    assert_difference('StatusType.count') do
      post status_types_url, params: { status_type: { StatusTypecode: @status_type.StatusTypecode, description: @status_type.description, ispending: @status_type.ispending } }, as: :json
    end

    assert_response 201
  end

  test "should show status_type" do
    get status_type_url(@status_type), as: :json
    assert_response :success
  end

  test "should update status_type" do
    patch status_type_url(@status_type), params: { status_type: { StatusTypecode: @status_type.StatusTypecode, description: @status_type.description, ispending: @status_type.ispending } }, as: :json
    assert_response 200
  end

  test "should destroy status_type" do
    assert_difference('StatusType.count', -1) do
      delete status_type_url(@status_type), as: :json
    end

    assert_response 204
  end
end
