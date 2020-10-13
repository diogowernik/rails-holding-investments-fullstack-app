require 'test_helper'

class CorretorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corretora = corretoras(:one)
  end

  test "should get index" do
    get corretoras_url
    assert_response :success
  end

  test "should get new" do
    get new_corretora_url
    assert_response :success
  end

  test "should create corretora" do
    assert_difference('Corretora.count') do
      post corretoras_url, params: { corretora: { corretagem: @corretora.corretagem, corretagem_iss: @corretora.corretagem_iss, corretagem_porcentagem: @corretora.corretagem_porcentagem, nome: @corretora.nome } }
    end

    assert_redirected_to corretora_url(Corretora.last)
  end

  test "should show corretora" do
    get corretora_url(@corretora)
    assert_response :success
  end

  test "should get edit" do
    get edit_corretora_url(@corretora)
    assert_response :success
  end

  test "should update corretora" do
    patch corretora_url(@corretora), params: { corretora: { corretagem: @corretora.corretagem, corretagem_iss: @corretora.corretagem_iss, corretagem_porcentagem: @corretora.corretagem_porcentagem, nome: @corretora.nome } }
    assert_redirected_to corretora_url(@corretora)
  end

  test "should destroy corretora" do
    assert_difference('Corretora.count', -1) do
      delete corretora_url(@corretora)
    end

    assert_redirected_to corretoras_url
  end
end
