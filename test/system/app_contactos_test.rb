require "application_system_test_case"

class AppContactosTest < ApplicationSystemTestCase
  setup do
    @app_contacto = app_contactos(:one)
  end

  test "visiting the index" do
    visit app_contactos_url
    assert_selector "h1", text: "App contactos"
  end

  test "should create app contacto" do
    visit app_contactos_url
    click_on "New app contacto"

    fill_in "App contacto", with: @app_contacto.app_contacto
    fill_in "Email", with: @app_contacto.email
    fill_in "Owner class", with: @app_contacto.owner_class
    fill_in "Owner", with: @app_contacto.owner_id
    fill_in "Telefono", with: @app_contacto.telefono
    click_on "Create App contacto"

    assert_text "App contacto was successfully created"
    click_on "Back"
  end

  test "should update App contacto" do
    visit app_contacto_url(@app_contacto)
    click_on "Edit this app contacto", match: :first

    fill_in "App contacto", with: @app_contacto.app_contacto
    fill_in "Email", with: @app_contacto.email
    fill_in "Owner class", with: @app_contacto.owner_class
    fill_in "Owner", with: @app_contacto.owner_id
    fill_in "Telefono", with: @app_contacto.telefono
    click_on "Update App contacto"

    assert_text "App contacto was successfully updated"
    click_on "Back"
  end

  test "should destroy App contacto" do
    visit app_contacto_url(@app_contacto)
    click_on "Destroy this app contacto", match: :first

    assert_text "App contacto was successfully destroyed"
  end
end
