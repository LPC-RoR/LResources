require "application_system_test_case"

class AppMejorasTest < ApplicationSystemTestCase
  setup do
    @app_mejora = app_mejoras(:one)
  end

  test "visiting the index" do
    visit app_mejoras_url
    assert_selector "h1", text: "App mejoras"
  end

  test "should create app mejora" do
    visit app_mejoras_url
    click_on "New app mejora"

    fill_in "App mejora", with: @app_mejora.app_mejora
    fill_in "App perfil", with: @app_mejora.app_perfil_id
    fill_in "Estado", with: @app_mejora.estado
    fill_in "Owner class", with: @app_mejora.owner_class
    fill_in "Owner", with: @app_mejora.owner_id
    click_on "Create App mejora"

    assert_text "App mejora was successfully created"
    click_on "Back"
  end

  test "should update App mejora" do
    visit app_mejora_url(@app_mejora)
    click_on "Edit this app mejora", match: :first

    fill_in "App mejora", with: @app_mejora.app_mejora
    fill_in "App perfil", with: @app_mejora.app_perfil_id
    fill_in "Estado", with: @app_mejora.estado
    fill_in "Owner class", with: @app_mejora.owner_class
    fill_in "Owner", with: @app_mejora.owner_id
    click_on "Update App mejora"

    assert_text "App mejora was successfully updated"
    click_on "Back"
  end

  test "should destroy App mejora" do
    visit app_mejora_url(@app_mejora)
    click_on "Destroy this app mejora", match: :first

    assert_text "App mejora was successfully destroyed"
  end
end
