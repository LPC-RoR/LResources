require "application_system_test_case"

class AppDirectoriosTest < ApplicationSystemTestCase
  setup do
    @app_directorio = app_directorios(:one)
  end

  test "visiting the index" do
    visit app_directorios_url
    assert_selector "h1", text: "App directorios"
  end

  test "should create app directorio" do
    visit app_directorios_url
    click_on "New app directorio"

    fill_in "App directorio", with: @app_directorio.app_directorio
    fill_in "Owner class", with: @app_directorio.owner_class
    fill_in "Owner", with: @app_directorio.owner_id
    click_on "Create App directorio"

    assert_text "App directorio was successfully created"
    click_on "Back"
  end

  test "should update App directorio" do
    visit app_directorio_url(@app_directorio)
    click_on "Edit this app directorio", match: :first

    fill_in "App directorio", with: @app_directorio.app_directorio
    fill_in "Owner class", with: @app_directorio.owner_class
    fill_in "Owner", with: @app_directorio.owner_id
    click_on "Update App directorio"

    assert_text "App directorio was successfully updated"
    click_on "Back"
  end

  test "should destroy App directorio" do
    visit app_directorio_url(@app_directorio)
    click_on "Destroy this app directorio", match: :first

    assert_text "App directorio was successfully destroyed"
  end
end
