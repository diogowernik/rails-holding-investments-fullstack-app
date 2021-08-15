require 'test_helper'

class Admin::YearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_year = admin_years(:one)
  end

  test "should get index" do
    get admin_years_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_year_url
    assert_response :success
  end

  test "should create admin_year" do
    assert_difference('Admin::Year.count') do
      post admin_years_url, params: { admin_year: {  } }
    end

    assert_redirected_to admin_year_url(Admin::Year.last)
  end

  test "should show admin_year" do
    get admin_year_url(@admin_year)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_year_url(@admin_year)
    assert_response :success
  end

  test "should update admin_year" do
    patch admin_year_url(@admin_year), params: { admin_year: {  } }
    assert_redirected_to admin_year_url(@admin_year)
  end

  test "should destroy admin_year" do
    assert_difference('Admin::Year.count', -1) do
      delete admin_year_url(@admin_year)
    end

    assert_redirected_to admin_years_url
  end
end
