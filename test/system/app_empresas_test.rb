require "application_system_test_case"

class AppEmpresasTest < ApplicationSystemTestCase
  setup do
    @app_empresa = app_empresas(:one)
  end

  test "visiting the index" do
    visit app_empresas_url
    assert_selector "h1", text: "App empresas"
  end

  test "should create app empresa" do
    visit app_empresas_url
    click_on "New app empresa"

    fill_in "App empresa", with: @app_empresa.app_empresa
    fill_in "Rut", with: @app_empresa.rut
    click_on "Create App empresa"

    assert_text "App empresa was successfully created"
    click_on "Back"
  end

  test "should update App empresa" do
    visit app_empresa_url(@app_empresa)
    click_on "Edit this app empresa", match: :first

    fill_in "App empresa", with: @app_empresa.app_empresa
    fill_in "Rut", with: @app_empresa.rut
    click_on "Update App empresa"

    assert_text "App empresa was successfully updated"
    click_on "Back"
  end

  test "should destroy App empresa" do
    visit app_empresa_url(@app_empresa)
    click_on "Destroy this app empresa", match: :first

    assert_text "App empresa was successfully destroyed"
  end
end
