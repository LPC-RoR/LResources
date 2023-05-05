require "application_system_test_case"

class AppRepositoriosTest < ApplicationSystemTestCase
  setup do
    @app_repositorio = app_repositorios(:one)
  end

  test "visiting the index" do
    visit app_repositorios_url
    assert_selector "h1", text: "App repositorios"
  end

  test "should create app repositorio" do
    visit app_repositorios_url
    click_on "New app repositorio"

    fill_in "App repositorio", with: @app_repositorio.app_repositorio
    fill_in "Owner class", with: @app_repositorio.owner_class
    fill_in "Owner", with: @app_repositorio.owner_id
    click_on "Create App repositorio"

    assert_text "App repositorio was successfully created"
    click_on "Back"
  end

  test "should update App repositorio" do
    visit app_repositorio_url(@app_repositorio)
    click_on "Edit this app repositorio", match: :first

    fill_in "App repositorio", with: @app_repositorio.app_repositorio
    fill_in "Owner class", with: @app_repositorio.owner_class
    fill_in "Owner", with: @app_repositorio.owner_id
    click_on "Update App repositorio"

    assert_text "App repositorio was successfully updated"
    click_on "Back"
  end

  test "should destroy App repositorio" do
    visit app_repositorio_url(@app_repositorio)
    click_on "Destroy this app repositorio", match: :first

    assert_text "App repositorio was successfully destroyed"
  end
end
