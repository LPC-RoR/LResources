require "test_helper"

class LdTipoFormatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ld_tipo_formato = ld_tipo_formatos(:one)
  end

  test "should get index" do
    get ld_tipo_formatos_url
    assert_response :success
  end

  test "should get new" do
    get new_ld_tipo_formato_url
    assert_response :success
  end

  test "should create ld_tipo_formato" do
    assert_difference("LdTipoFormato.count") do
      post ld_tipo_formatos_url, params: { ld_tipo_formato: { ld_tipo_formato: @ld_tipo_formato.ld_tipo_formato } }
    end

    assert_redirected_to ld_tipo_formato_url(LdTipoFormato.last)
  end

  test "should show ld_tipo_formato" do
    get ld_tipo_formato_url(@ld_tipo_formato)
    assert_response :success
  end

  test "should get edit" do
    get edit_ld_tipo_formato_url(@ld_tipo_formato)
    assert_response :success
  end

  test "should update ld_tipo_formato" do
    patch ld_tipo_formato_url(@ld_tipo_formato), params: { ld_tipo_formato: { ld_tipo_formato: @ld_tipo_formato.ld_tipo_formato } }
    assert_redirected_to ld_tipo_formato_url(@ld_tipo_formato)
  end

  test "should destroy ld_tipo_formato" do
    assert_difference("LdTipoFormato.count", -1) do
      delete ld_tipo_formato_url(@ld_tipo_formato)
    end

    assert_redirected_to ld_tipo_formatos_url
  end
end
