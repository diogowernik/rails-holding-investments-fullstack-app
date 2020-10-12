require 'test_helper'

class DerivaMovesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deriva_move = deriva_moves(:one)
  end

  test "should get index" do
    get deriva_moves_url
    assert_response :success
  end

  test "should get new" do
    get new_deriva_move_url
    assert_response :success
  end

  test "should create deriva_move" do
    assert_difference('DerivaMove.count') do
      post deriva_moves_url, params: { deriva_move: { carteira_id: @deriva_move.carteira_id, data: @deriva_move.data, derivativo_id: @deriva_move.derivativo_id, estado_id: @deriva_move.estado_id, movimento: @deriva_move.movimento, quantidade: @deriva_move.quantidade, valor: @deriva_move.valor } }
    end

    assert_redirected_to deriva_move_url(DerivaMove.last)
  end

  test "should show deriva_move" do
    get deriva_move_url(@deriva_move)
    assert_response :success
  end

  test "should get edit" do
    get edit_deriva_move_url(@deriva_move)
    assert_response :success
  end

  test "should update deriva_move" do
    patch deriva_move_url(@deriva_move), params: { deriva_move: { carteira_id: @deriva_move.carteira_id, data: @deriva_move.data, derivativo_id: @deriva_move.derivativo_id, estado_id: @deriva_move.estado_id, movimento: @deriva_move.movimento, quantidade: @deriva_move.quantidade, valor: @deriva_move.valor } }
    assert_redirected_to deriva_move_url(@deriva_move)
  end

  test "should destroy deriva_move" do
    assert_difference('DerivaMove.count', -1) do
      delete deriva_move_url(@deriva_move)
    end

    assert_redirected_to deriva_moves_url
  end
end
