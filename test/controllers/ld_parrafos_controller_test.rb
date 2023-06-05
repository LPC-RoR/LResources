require "test_helper"

class LdParrafosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ld_parrafo = ld_parrafos(:one)
  end

  test "should get index" do
    get ld_parrafos_url
    assert_response :success
  end

  test "should get new" do
    get new_ld_parrafo_url
    assert_response :success
  end

  test "should create ld_parrafo" do
    assert_difference("LdParrafo.count") do
      post ld_parrafos_url, params: { ld_parrafo: { ld_parrafo: @ld_parrafo.ld_parrafo, ownr_class: @ld_parrafo.ownr_class, ownr_id: @ld_parrafo.ownr_id, texto: @ld_parrafo.texto } }
    end

    assert_redirected_to ld_parrafo_url(LdParrafo.last)
  end

  test "should show ld_parrafo" do
    get ld_parrafo_url(@ld_parrafo)
    assert_response :success
  end

  test "should get edit" do
    get edit_ld_parrafo_url(@ld_parrafo)
    assert_response :success
  end

  test "should update ld_parrafo" do
    patch ld_parrafo_url(@ld_parrafo), params: { ld_parrafo: { ld_parrafo: @ld_parrafo.ld_parrafo, ownr_class: @ld_parrafo.ownr_class, ownr_id: @ld_parrafo.ownr_id, texto: @ld_parrafo.texto } }
    assert_redirected_to ld_parrafo_url(@ld_parrafo)
  end

  test "should destroy ld_parrafo" do
    assert_difference("LdParrafo.count", -1) do
      delete ld_parrafo_url(@ld_parrafo)
    end

    assert_redirected_to ld_parrafos_url
  end
end
