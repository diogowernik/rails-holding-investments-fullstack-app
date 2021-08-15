require 'test_helper'

class Api::YearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_year = api_years(:one)
  end

  test "should get index" do
    get api_years_url, as: :json
    assert_response :success
  end

  test "should create api_year" do
    assert_difference('Api::Year.count') do
      post api_years_url, params: { api_year: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_year" do
    get api_year_url(@api_year), as: :json
    assert_response :success
  end

  test "should update api_year" do
    patch api_year_url(@api_year), params: { api_year: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_year" do
    assert_difference('Api::Year.count', -1) do
      delete api_year_url(@api_year), as: :json
    end

    assert_response 204
  end
end
