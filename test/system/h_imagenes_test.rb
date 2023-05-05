require "application_system_test_case"

class HImagenesTest < ApplicationSystemTestCase
  setup do
    @h_imagen = h_imagenes(:one)
  end

  test "visiting the index" do
    visit h_imagenes_url
    assert_selector "h1", text: "H imagenes"
  end

  test "should create h imagen" do
    visit h_imagenes_url
    click_on "New h imagen"

    fill_in "H imagen", with: @h_imagen.h_imagen
    click_on "Create H imagen"

    assert_text "H imagen was successfully created"
    click_on "Back"
  end

  test "should update H imagen" do
    visit h_imagen_url(@h_imagen)
    click_on "Edit this h imagen", match: :first

    fill_in "H imagen", with: @h_imagen.h_imagen
    click_on "Update H imagen"

    assert_text "H imagen was successfully updated"
    click_on "Back"
  end

  test "should destroy H imagen" do
    visit h_imagen_url(@h_imagen)
    click_on "Destroy this h imagen", match: :first

    assert_text "H imagen was successfully destroyed"
  end
end
