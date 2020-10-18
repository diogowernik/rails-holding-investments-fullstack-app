require 'test_helper'

class AtivoMovesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ativo_move = ativo_moves(:one)
  end

  test "should get index" do
    get ativo_moves_url
    assert_response :success
  end

  test "should get new" do
    get new_ativo_move_url
    assert_response :success
  end

  test "should create ativo_move" do
    assert_difference('AtivoMove.count') do
      post ativo_moves_url, params: { ativo_move: { ativo_id: @ativo_move.ativo_id, carteira_id: @ativo_move.carteira_id, codigo: @ativo_move.codigo, corretora_id: @ativo_move.corretora_id, data: @ativo_move.data, investimento_id: @ativo_move.investimento_id, movimento: @ativo_move.movimento, quantidade: @ativo_move.quantidade, tipo_id: @ativo_move.tipo_id, valor: @ativo_move.valor } }
    end

    assert_redirected_to ativo_move_url(AtivoMove.last)
  end

  test "should show ativo_move" do
    get ativo_move_url(@ativo_move)
    assert_response :success
  end

  test "should get edit" do
    get edit_ativo_move_url(@ativo_move)
    assert_response :success
  end

  test "should update ativo_move" do
    patch ativo_move_url(@ativo_move), params: { ativo_move: { ativo_id: @ativo_move.ativo_id, carteira_id: @ativo_move.carteira_id, codigo: @ativo_move.codigo, corretora_id: @ativo_move.corretora_id, data: @ativo_move.data, investimento_id: @ativo_move.investimento_id, movimento: @ativo_move.movimento, quantidade: @ativo_move.quantidade, tipo_id: @ativo_move.tipo_id, valor: @ativo_move.valor } }
    assert_redirected_to ativo_move_url(@ativo_move)
  end

  test "should destroy ativo_move" do
    assert_difference('AtivoMove.count', -1) do
      delete ativo_move_url(@ativo_move)
    end

    assert_redirected_to ativo_moves_url
  end
end
