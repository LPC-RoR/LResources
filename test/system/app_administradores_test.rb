require "application_system_test_case"

class AppAdministradoresTest < ApplicationSystemTestCase
  setup do
    @app_administrador = app_administradores(:one)
  end

  test "visiting the index" do
    visit app_administradores_url
    assert_selector "h1", text: "App administradores"
  end

  test "should create app administrador" do
    visit app_administradores_url
    click_on "New app administrador"

    fill_in "App administrador", with: @app_administrador.app_administrador
    fill_in "Email", with: @app_administrador.email
    click_on "Create App administrador"

    assert_text "App administrador was successfully created"
    click_on "Back"
  end

  test "should update App administrador" do
    visit app_administrador_url(@app_administrador)
    click_on "Edit this app administrador", match: :first

    fill_in "App administrador", with: @app_administrador.app_administrador
    fill_in "Email", with: @app_administrador.email
    click_on "Update App administrador"

    assert_text "App administrador was successfully updated"
    click_on "Back"
  end

  test "should destroy App administrador" do
    visit app_administrador_url(@app_administrador)
    click_on "Destroy this app administrador", match: :first

    assert_text "App administrador was successfully destroyed"
  end
end
