require "application_system_test_case"

class AppEnlacesTest < ApplicationSystemTestCase
  setup do
    @app_enlace = app_enlaces(:one)
  end

  test "visiting the index" do
    visit app_enlaces_url
    assert_selector "h1", text: "App enlaces"
  end

  test "should create app enlace" do
    visit app_enlaces_url
    click_on "New app enlace"

    fill_in "App enlace", with: @app_enlace.app_enlace
    fill_in "Link", with: @app_enlace.link
    fill_in "Owner class", with: @app_enlace.owner_class
    fill_in "Owner", with: @app_enlace.owner_id
    click_on "Create App enlace"

    assert_text "App enlace was successfully created"
    click_on "Back"
  end

  test "should update App enlace" do
    visit app_enlace_url(@app_enlace)
    click_on "Edit this app enlace", match: :first

    fill_in "App enlace", with: @app_enlace.app_enlace
    fill_in "Link", with: @app_enlace.link
    fill_in "Owner class", with: @app_enlace.owner_class
    fill_in "Owner", with: @app_enlace.owner_id
    click_on "Update App enlace"

    assert_text "App enlace was successfully updated"
    click_on "Back"
  end

  test "should destroy App enlace" do
    visit app_enlace_url(@app_enlace)
    click_on "Destroy this app enlace", match: :first

    assert_text "App enlace was successfully destroyed"
  end
end
