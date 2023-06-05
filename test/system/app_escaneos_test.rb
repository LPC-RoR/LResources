require "application_system_test_case"

class AppEscaneosTest < ApplicationSystemTestCase
  setup do
    @app_escaneo = app_escaneos(:one)
  end

  test "visiting the index" do
    visit app_escaneos_url
    assert_selector "h1", text: "App escaneos"
  end

  test "should create app escaneo" do
    visit app_escaneos_url
    click_on "New app escaneo"

    fill_in "Ownr class", with: @app_escaneo.ownr_class
    fill_in "Ownr", with: @app_escaneo.ownr_id
    click_on "Create App escaneo"

    assert_text "App escaneo was successfully created"
    click_on "Back"
  end

  test "should update App escaneo" do
    visit app_escaneo_url(@app_escaneo)
    click_on "Edit this app escaneo", match: :first

    fill_in "Ownr class", with: @app_escaneo.ownr_class
    fill_in "Ownr", with: @app_escaneo.ownr_id
    click_on "Update App escaneo"

    assert_text "App escaneo was successfully updated"
    click_on "Back"
  end

  test "should destroy App escaneo" do
    visit app_escaneo_url(@app_escaneo)
    click_on "Destroy this app escaneo", match: :first

    assert_text "App escaneo was successfully destroyed"
  end
end
