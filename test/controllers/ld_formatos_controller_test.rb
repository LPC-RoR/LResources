require "test_helper"

class LdFormatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ld_formato = ld_formatos(:one)
  end

  test "should get index" do
    get ld_formatos_url
    assert_response :success
  end

  test "should get new" do
    get new_ld_formato_url
    assert_response :success
  end

  test "should create ld_formato" do
    assert_difference("LdFormato.count") do
      post ld_formatos_url, params: { ld_formato: { ld_formato: @ld_formato.ld_formato, ownr_class: @ld_formato.ownr_class, ownr_id: @ld_formato.ownr_id } }
    end

    assert_redirected_to ld_formato_url(LdFormato.last)
  end

  test "should show ld_formato" do
    get ld_formato_url(@ld_formato)
    assert_response :success
  end

  test "should get edit" do
    get edit_ld_formato_url(@ld_formato)
    assert_response :success
  end

  test "should update ld_formato" do
    patch ld_formato_url(@ld_formato), params: { ld_formato: { ld_formato: @ld_formato.ld_formato, ownr_class: @ld_formato.ownr_class, ownr_id: @ld_formato.ownr_id } }
    assert_redirected_to ld_formato_url(@ld_formato)
  end

  test "should destroy ld_formato" do
    assert_difference("LdFormato.count", -1) do
      delete ld_formato_url(@ld_formato)
    end

    assert_redirected_to ld_formatos_url
  end
end
