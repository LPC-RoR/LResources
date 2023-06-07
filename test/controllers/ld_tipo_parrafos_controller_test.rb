require "test_helper"

class LdTipoParrafosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ld_tipo_parrafo = ld_tipo_parrafos(:one)
  end

  test "should get index" do
    get ld_tipo_parrafos_url
    assert_response :success
  end

  test "should get new" do
    get new_ld_tipo_parrafo_url
    assert_response :success
  end

  test "should create ld_tipo_parrafo" do
    assert_difference("LdTipoParrafo.count") do
      post ld_tipo_parrafos_url, params: { ld_tipo_parrafo: { ld_tipo_parrafo: @ld_tipo_parrafo.ld_tipo_parrafo } }
    end

    assert_redirected_to ld_tipo_parrafo_url(LdTipoParrafo.last)
  end

  test "should show ld_tipo_parrafo" do
    get ld_tipo_parrafo_url(@ld_tipo_parrafo)
    assert_response :success
  end

  test "should get edit" do
    get edit_ld_tipo_parrafo_url(@ld_tipo_parrafo)
    assert_response :success
  end

  test "should update ld_tipo_parrafo" do
    patch ld_tipo_parrafo_url(@ld_tipo_parrafo), params: { ld_tipo_parrafo: { ld_tipo_parrafo: @ld_tipo_parrafo.ld_tipo_parrafo } }
    assert_redirected_to ld_tipo_parrafo_url(@ld_tipo_parrafo)
  end

  test "should destroy ld_tipo_parrafo" do
    assert_difference("LdTipoParrafo.count", -1) do
      delete ld_tipo_parrafo_url(@ld_tipo_parrafo)
    end

    assert_redirected_to ld_tipo_parrafos_url
  end
end
