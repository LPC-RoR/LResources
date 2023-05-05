require "application_system_test_case"

class AppDocumentosTest < ApplicationSystemTestCase
  setup do
    @app_documento = app_documentos(:one)
  end

  test "visiting the index" do
    visit app_documentos_url
    assert_selector "h1", text: "App documentos"
  end

  test "should create app documento" do
    visit app_documentos_url
    click_on "New app documento"

    fill_in "App documento", with: @app_documento.app_documento
    fill_in "Owner class", with: @app_documento.owner_class
    fill_in "Owner", with: @app_documento.owner_id
    click_on "Create App documento"

    assert_text "App documento was successfully created"
    click_on "Back"
  end

  test "should update App documento" do
    visit app_documento_url(@app_documento)
    click_on "Edit this app documento", match: :first

    fill_in "App documento", with: @app_documento.app_documento
    fill_in "Owner class", with: @app_documento.owner_class
    fill_in "Owner", with: @app_documento.owner_id
    click_on "Update App documento"

    assert_text "App documento was successfully updated"
    click_on "Back"
  end

  test "should destroy App documento" do
    visit app_documento_url(@app_documento)
    click_on "Destroy this app documento", match: :first

    assert_text "App documento was successfully destroyed"
  end
end
