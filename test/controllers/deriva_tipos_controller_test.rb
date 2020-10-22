require 'test_helper'

class DerivaTiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deriva_tipo = deriva_tipos(:one)
  end

  test "should get index" do
    get deriva_tipos_url
    assert_response :success
  end

  test "should get new" do
    get new_deriva_tipo_url
    assert_response :success
  end

  test "should create deriva_tipo" do
    assert_difference('DerivaTipo.count') do
      post deriva_tipos_url, params: { deriva_tipo: { tipo: @deriva_tipo.tipo } }
    end

    assert_redirected_to deriva_tipo_url(DerivaTipo.last)
  end

  test "should show deriva_tipo" do
    get deriva_tipo_url(@deriva_tipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_deriva_tipo_url(@deriva_tipo)
    assert_response :success
  end

  test "should update deriva_tipo" do
    patch deriva_tipo_url(@deriva_tipo), params: { deriva_tipo: { tipo: @deriva_tipo.tipo } }
    assert_redirected_to deriva_tipo_url(@deriva_tipo)
  end

  test "should destroy deriva_tipo" do
    assert_difference('DerivaTipo.count', -1) do
      delete deriva_tipo_url(@deriva_tipo)
    end

    assert_redirected_to deriva_tipos_url
  end
end
