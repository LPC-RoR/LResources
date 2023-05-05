require "application_system_test_case"

class AppObservacionesTest < ApplicationSystemTestCase
  setup do
    @app_observacion = app_observaciones(:one)
  end

  test "visiting the index" do
    visit app_observaciones_url
    assert_selector "h1", text: "App observaciones"
  end

  test "should create app observacion" do
    visit app_observaciones_url
    click_on "New app observacion"

    fill_in "App observacion", with: @app_observacion.app_observacion
    fill_in "App perfil", with: @app_observacion.app_perfil_id
    fill_in "Owner class", with: @app_observacion.owner_class
    fill_in "Owner", with: @app_observacion.owner_id
    click_on "Create App observacion"

    assert_text "App observacion was successfully created"
    click_on "Back"
  end

  test "should update App observacion" do
    visit app_observacion_url(@app_observacion)
    click_on "Edit this app observacion", match: :first

    fill_in "App observacion", with: @app_observacion.app_observacion
    fill_in "App perfil", with: @app_observacion.app_perfil_id
    fill_in "Owner class", with: @app_observacion.owner_class
    fill_in "Owner", with: @app_observacion.owner_id
    click_on "Update App observacion"

    assert_text "App observacion was successfully updated"
    click_on "Back"
  end

  test "should destroy App observacion" do
    visit app_observacion_url(@app_observacion)
    click_on "Destroy this app observacion", match: :first

    assert_text "App observacion was successfully destroyed"
  end
end
