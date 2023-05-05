require "application_system_test_case"

class AppNominasTest < ApplicationSystemTestCase
  setup do
    @app_nomina = app_nominas(:one)
  end

  test "visiting the index" do
    visit app_nominas_url
    assert_selector "h1", text: "App nominas"
  end

  test "should create app nomina" do
    visit app_nominas_url
    click_on "New app nomina"

    fill_in "App nomina", with: @app_nomina.app_nomina
    fill_in "Email", with: @app_nomina.email
    click_on "Create App nomina"

    assert_text "App nomina was successfully created"
    click_on "Back"
  end

  test "should update App nomina" do
    visit app_nomina_url(@app_nomina)
    click_on "Edit this app nomina", match: :first

    fill_in "App nomina", with: @app_nomina.app_nomina
    fill_in "Email", with: @app_nomina.email
    click_on "Update App nomina"

    assert_text "App nomina was successfully updated"
    click_on "Back"
  end

  test "should destroy App nomina" do
    visit app_nomina_url(@app_nomina)
    click_on "Destroy this app nomina", match: :first

    assert_text "App nomina was successfully destroyed"
  end
end
