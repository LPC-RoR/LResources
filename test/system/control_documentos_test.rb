require "application_system_test_case"

class ControlDocumentosTest < ApplicationSystemTestCase
  setup do
    @control_documento = control_documentos(:one)
  end

  test "visiting the index" do
    visit control_documentos_url
    assert_selector "h1", text: "Control documentos"
  end

  test "should create control documento" do
    visit control_documentos_url
    click_on "New control documento"

    fill_in "Control documento", with: @control_documento.control_documento
    fill_in "Existencia", with: @control_documento.existencia
    fill_in "Ownr class", with: @control_documento.ownr_class
    fill_in "Ownr", with: @control_documento.ownr_id
    check "Vencimiento" if @control_documento.vencimiento
    click_on "Create Control documento"

    assert_text "Control documento was successfully created"
    click_on "Back"
  end

  test "should update Control documento" do
    visit control_documento_url(@control_documento)
    click_on "Edit this control documento", match: :first

    fill_in "Control documento", with: @control_documento.control_documento
    fill_in "Existencia", with: @control_documento.existencia
    fill_in "Ownr class", with: @control_documento.ownr_class
    fill_in "Ownr", with: @control_documento.ownr_id
    check "Vencimiento" if @control_documento.vencimiento
    click_on "Update Control documento"

    assert_text "Control documento was successfully updated"
    click_on "Back"
  end

  test "should destroy Control documento" do
    visit control_documento_url(@control_documento)
    click_on "Destroy this control documento", match: :first

    assert_text "Control documento was successfully destroyed"
  end
end
