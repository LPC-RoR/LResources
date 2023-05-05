require "application_system_test_case"

class AppArchivosTest < ApplicationSystemTestCase
  setup do
    @app_archivo = app_archivos(:one)
  end

  test "visiting the index" do
    visit app_archivos_url
    assert_selector "h1", text: "App archivos"
  end

  test "should create app archivo" do
    visit app_archivos_url
    click_on "New app archivo"

    fill_in "App archivo", with: @app_archivo.app_archivo
    fill_in "Owner class", with: @app_archivo.owner_class
    fill_in "Owner", with: @app_archivo.owner_id
    click_on "Create App archivo"

    assert_text "App archivo was successfully created"
    click_on "Back"
  end

  test "should update App archivo" do
    visit app_archivo_url(@app_archivo)
    click_on "Edit this app archivo", match: :first

    fill_in "App archivo", with: @app_archivo.app_archivo
    fill_in "Owner class", with: @app_archivo.owner_class
    fill_in "Owner", with: @app_archivo.owner_id
    click_on "Update App archivo"

    assert_text "App archivo was successfully updated"
    click_on "Back"
  end

  test "should destroy App archivo" do
    visit app_archivo_url(@app_archivo)
    click_on "Destroy this app archivo", match: :first

    assert_text "App archivo was successfully destroyed"
  end
end
