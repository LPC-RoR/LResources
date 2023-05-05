require "application_system_test_case"

class AppRecursosTest < ApplicationSystemTestCase
  setup do
    @app_recurso = app_recursos(:one)
  end

  test "visiting the index" do
    visit app_recursos_url
    assert_selector "h1", text: "App recursos"
  end

  test "should create app recurso" do
    visit app_recursos_url
    click_on "New app recurso"

    click_on "Create App recurso"

    assert_text "App recurso was successfully created"
    click_on "Back"
  end

  test "should update App recurso" do
    visit app_recurso_url(@app_recurso)
    click_on "Edit this app recurso", match: :first

    click_on "Update App recurso"

    assert_text "App recurso was successfully updated"
    click_on "Back"
  end

  test "should destroy App recurso" do
    visit app_recurso_url(@app_recurso)
    click_on "Destroy this app recurso", match: :first

    assert_text "App recurso was successfully destroyed"
  end
end
