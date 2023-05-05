require "application_system_test_case"

class AppPerfilesTest < ApplicationSystemTestCase
  setup do
    @app_perfil = app_perfiles(:one)
  end

  test "visiting the index" do
    visit app_perfiles_url
    assert_selector "h1", text: "App perfiles"
  end

  test "should create app perfil" do
    visit app_perfiles_url
    click_on "New app perfil"

    fill_in "Email", with: @app_perfil.email
    click_on "Create App perfil"

    assert_text "App perfil was successfully created"
    click_on "Back"
  end

  test "should update App perfil" do
    visit app_perfil_url(@app_perfil)
    click_on "Edit this app perfil", match: :first

    fill_in "Email", with: @app_perfil.email
    click_on "Update App perfil"

    assert_text "App perfil was successfully updated"
    click_on "Back"
  end

  test "should destroy App perfil" do
    visit app_perfil_url(@app_perfil)
    click_on "Destroy this app perfil", match: :first

    assert_text "App perfil was successfully destroyed"
  end
end
