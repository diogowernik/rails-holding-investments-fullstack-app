require 'test_helper'

class DerivativosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @derivativo = derivativos(:one)
  end

  test "should get index" do
    get derivativos_url
    assert_response :success
  end

  test "should get new" do
    get new_derivativo_url
    assert_response :success
  end

  test "should create derivativo" do
    assert_difference('Derivativo.count') do
      post derivativos_url, params: { derivativo: { ativo_id: @derivativo.ativo_id, codigo: @derivativo.codigo, estado_id: @derivativo.estado_id, strike: @derivativo.strike, tipo: @derivativo.tipo, vencimento: @derivativo.vencimento } }
    end

    assert_redirected_to derivativo_url(Derivativo.last)
  end

  test "should show derivativo" do
    get derivativo_url(@derivativo)
    assert_response :success
  end

  test "should get edit" do
    get edit_derivativo_url(@derivativo)
    assert_response :success
  end

  test "should update derivativo" do
    patch derivativo_url(@derivativo), params: { derivativo: { ativo_id: @derivativo.ativo_id, codigo: @derivativo.codigo, estado_id: @derivativo.estado_id, strike: @derivativo.strike, tipo: @derivativo.tipo, vencimento: @derivativo.vencimento } }
    assert_redirected_to derivativo_url(@derivativo)
  end

  test "should destroy derivativo" do
    assert_difference('Derivativo.count', -1) do
      delete derivativo_url(@derivativo)
    end

    assert_redirected_to derivativos_url
  end
end
