require 'test_helper'

class ProventosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @provento = proventos(:one)
  end

  test "should get index" do
    get proventos_url
    assert_response :success
  end

  test "should get new" do
    get new_provento_url
    assert_response :success
  end

  test "should create provento" do
    assert_difference('Provento.count') do
      post proventos_url, params: { provento: { abr: @provento.abr, ago: @provento.ago, ano_id: @provento.ano_id, carteira_id: @provento.carteira_id, dez: @provento.dez, fev: @provento.fev, jan: @provento.jan, jul: @provento.jul, jun: @provento.jun, mai: @provento.mai, mar: @provento.mar, nov: @provento.nov, out: @provento.out, set: @provento.set } }
    end

    assert_redirected_to provento_url(Provento.last)
  end

  test "should show provento" do
    get provento_url(@provento)
    assert_response :success
  end

  test "should get edit" do
    get edit_provento_url(@provento)
    assert_response :success
  end

  test "should update provento" do
    patch provento_url(@provento), params: { provento: { abr: @provento.abr, ago: @provento.ago, ano_id: @provento.ano_id, carteira_id: @provento.carteira_id, dez: @provento.dez, fev: @provento.fev, jan: @provento.jan, jul: @provento.jul, jun: @provento.jun, mai: @provento.mai, mar: @provento.mar, nov: @provento.nov, out: @provento.out, set: @provento.set } }
    assert_redirected_to provento_url(@provento)
  end

  test "should destroy provento" do
    assert_difference('Provento.count', -1) do
      delete provento_url(@provento)
    end

    assert_redirected_to proventos_url
  end
end
