require 'test_helper'

class InvestimentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investimento = investimentos(:one)
  end

  test "should get index" do
    get investimentos_url
    assert_response :success
  end

  test "should get new" do
    get new_investimento_url
    assert_response :success
  end

  test "should create investimento" do
    assert_difference('Investimento.count') do
      post investimentos_url, params: { investimento: { carteira_id: @investimento.carteira_id, quantidade: @investimento.quantidade, ticker: @investimento.ticker } }
    end

    assert_redirected_to investimento_url(Investimento.last)
  end

  test "should show investimento" do
    get investimento_url(@investimento)
    assert_response :success
  end

  test "should get edit" do
    get edit_investimento_url(@investimento)
    assert_response :success
  end

  test "should update investimento" do
    patch investimento_url(@investimento), params: { investimento: { carteira_id: @investimento.carteira_id, quantidade: @investimento.quantidade, ticker: @investimento.ticker } }
    assert_redirected_to investimento_url(@investimento)
  end

  test "should destroy investimento" do
    assert_difference('Investimento.count', -1) do
      delete investimento_url(@investimento)
    end

    assert_redirected_to investimentos_url
  end
end
