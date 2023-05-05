require "application_system_test_case"

class AppImagenesTest < ApplicationSystemTestCase
  setup do
    @app_imagen = app_imagenes(:one)
  end

  test "visiting the index" do
    visit app_imagenes_url
    assert_selector "h1", text: "App imagenes"
  end

  test "should create app imagen" do
    visit app_imagenes_url
    click_on "New app imagen"

    fill_in "App imagen", with: @app_imagen.app_imagen
    fill_in "Credito imagen", with: @app_imagen.credito_imagen
    fill_in "Imagen", with: @app_imagen.imagen
    fill_in "Owner class", with: @app_imagen.owner_class
    fill_in "Owner", with: @app_imagen.owner_id
    click_on "Create App imagen"

    assert_text "App imagen was successfully created"
    click_on "Back"
  end

  test "should update App imagen" do
    visit app_imagen_url(@app_imagen)
    click_on "Edit this app imagen", match: :first

    fill_in "App imagen", with: @app_imagen.app_imagen
    fill_in "Credito imagen", with: @app_imagen.credito_imagen
    fill_in "Imagen", with: @app_imagen.imagen
    fill_in "Owner class", with: @app_imagen.owner_class
    fill_in "Owner", with: @app_imagen.owner_id
    click_on "Update App imagen"

    assert_text "App imagen was successfully updated"
    click_on "Back"
  end

  test "should destroy App imagen" do
    visit app_imagen_url(@app_imagen)
    click_on "Destroy this app imagen", match: :first

    assert_text "App imagen was successfully destroyed"
  end
end
