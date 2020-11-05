require 'test_helper'

class SinteticosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sintetico = sinteticos(:one)
  end

  test "should get index" do
    get sinteticos_url
    assert_response :success
  end

  test "should get new" do
    get new_sintetico_url
    assert_response :success
  end

  test "should create sintetico" do
    assert_difference('Sintetico.count') do
      post sinteticos_url, params: { sintetico: { abr: @sintetico.abr, ago: @sintetico.ago, ano_id: @sintetico.ano_id, carteira_id: @sintetico.carteira_id, dez: @sintetico.dez, fev: @sintetico.fev, jan: @sintetico.jan, jul: @sintetico.jul, jun: @sintetico.jun, mai: @sintetico.mai, mar: @sintetico.mar, nov: @sintetico.nov, out: @sintetico.out, set: @sintetico.set } }
    end

    assert_redirected_to sintetico_url(Sintetico.last)
  end

  test "should show sintetico" do
    get sintetico_url(@sintetico)
    assert_response :success
  end

  test "should get edit" do
    get edit_sintetico_url(@sintetico)
    assert_response :success
  end

  test "should update sintetico" do
    patch sintetico_url(@sintetico), params: { sintetico: { abr: @sintetico.abr, ago: @sintetico.ago, ano_id: @sintetico.ano_id, carteira_id: @sintetico.carteira_id, dez: @sintetico.dez, fev: @sintetico.fev, jan: @sintetico.jan, jul: @sintetico.jul, jun: @sintetico.jun, mai: @sintetico.mai, mar: @sintetico.mar, nov: @sintetico.nov, out: @sintetico.out, set: @sintetico.set } }
    assert_redirected_to sintetico_url(@sintetico)
  end

  test "should destroy sintetico" do
    assert_difference('Sintetico.count', -1) do
      delete sintetico_url(@sintetico)
    end

    assert_redirected_to sinteticos_url
  end
end
