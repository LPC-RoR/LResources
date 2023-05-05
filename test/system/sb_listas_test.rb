require "application_system_test_case"

class SbListasTest < ApplicationSystemTestCase
  setup do
    @sb_lista = sb_listas(:one)
  end

  test "visiting the index" do
    visit sb_listas_url
    assert_selector "h1", text: "Sb listas"
  end

  test "should create sb lista" do
    visit sb_listas_url
    click_on "New sb lista"

    fill_in "Acceso", with: @sb_lista.acceso
    check "Activa" if @sb_lista.activa
    fill_in "Ruta", with: @sb_lista.ruta
    fill_in "Sb lista", with: @sb_lista.sb_lista
    click_on "Create Sb lista"

    assert_text "Sb lista was successfully created"
    click_on "Back"
  end

  test "should update Sb lista" do
    visit sb_lista_url(@sb_lista)
    click_on "Edit this sb lista", match: :first

    fill_in "Acceso", with: @sb_lista.acceso
    check "Activa" if @sb_lista.activa
    fill_in "Ruta", with: @sb_lista.ruta
    fill_in "Sb lista", with: @sb_lista.sb_lista
    click_on "Update Sb lista"

    assert_text "Sb lista was successfully updated"
    click_on "Back"
  end

  test "should destroy Sb lista" do
    visit sb_lista_url(@sb_lista)
    click_on "Destroy this sb lista", match: :first

    assert_text "Sb lista was successfully destroyed"
  end
end
