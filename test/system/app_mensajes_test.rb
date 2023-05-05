require "application_system_test_case"

class AppMensajesTest < ApplicationSystemTestCase
  setup do
    @app_mensaje = app_mensajes(:one)
  end

  test "visiting the index" do
    visit app_mensajes_url
    assert_selector "h1", text: "App mensajes"
  end

  test "should create app mensaje" do
    visit app_mensajes_url
    click_on "New app mensaje"

    fill_in "App mensaje", with: @app_mensaje.app_mensaje
    fill_in "App perfil", with: @app_mensaje.app_perfil_id
    fill_in "Detalle", with: @app_mensaje.detalle
    fill_in "Email", with: @app_mensaje.email
    fill_in "Estado", with: @app_mensaje.estado
    fill_in "Fecha envio", with: @app_mensaje.fecha_envio
    fill_in "Tipo", with: @app_mensaje.tipo
    click_on "Create App mensaje"

    assert_text "App mensaje was successfully created"
    click_on "Back"
  end

  test "should update App mensaje" do
    visit app_mensaje_url(@app_mensaje)
    click_on "Edit this app mensaje", match: :first

    fill_in "App mensaje", with: @app_mensaje.app_mensaje
    fill_in "App perfil", with: @app_mensaje.app_perfil_id
    fill_in "Detalle", with: @app_mensaje.detalle
    fill_in "Email", with: @app_mensaje.email
    fill_in "Estado", with: @app_mensaje.estado
    fill_in "Fecha envio", with: @app_mensaje.fecha_envio
    fill_in "Tipo", with: @app_mensaje.tipo
    click_on "Update App mensaje"

    assert_text "App mensaje was successfully updated"
    click_on "Back"
  end

  test "should destroy App mensaje" do
    visit app_mensaje_url(@app_mensaje)
    click_on "Destroy this app mensaje", match: :first

    assert_text "App mensaje was successfully destroyed"
  end
end
