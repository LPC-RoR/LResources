require "test_helper"

class AreAresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @are_ar = are_ares(:one)
  end

  test "should get index" do
    get are_ares_url
    assert_response :success
  end

  test "should get new" do
    get new_are_ar_url
    assert_response :success
  end

  test "should create are_ar" do
    assert_difference("AreAre.count") do
      post are_ares_url, params: { are_ar: { jefatura_id: @are_ar.jefatura_id, subordinada_id: @are_ar.subordinada_id } }
    end

    assert_redirected_to are_ar_url(AreAre.last)
  end

  test "should show are_ar" do
    get are_ar_url(@are_ar)
    assert_response :success
  end

  test "should get edit" do
    get edit_are_ar_url(@are_ar)
    assert_response :success
  end

  test "should update are_ar" do
    patch are_ar_url(@are_ar), params: { are_ar: { jefatura_id: @are_ar.jefatura_id, subordinada_id: @are_ar.subordinada_id } }
    assert_redirected_to are_ar_url(@are_ar)
  end

  test "should destroy are_ar" do
    assert_difference("AreAre.count", -1) do
      delete are_ar_url(@are_ar)
    end

    assert_redirected_to are_ares_url
  end
end
