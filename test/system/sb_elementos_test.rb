require "application_system_test_case"

class SbElementosTest < ApplicationSystemTestCase
  setup do
    @sb_elemento = sb_elementos(:one)
  end

  test "visiting the index" do
    visit sb_elementos_url
    assert_selector "h1", text: "Sb elementos"
  end

  test "should create sb elemento" do
    visit sb_elementos_url
    click_on "New sb elemento"

    fill_in "Acceso", with: @sb_elemento.acceso
    check "Activo" if @sb_elemento.activo
    fill_in "Controlador", with: @sb_elemento.controlador
    fill_in "Despliegue", with: @sb_elemento.despliegue
    fill_in "Nivel", with: @sb_elemento.nivel
    fill_in "Orden", with: @sb_elemento.orden
    fill_in "Sb elemento", with: @sb_elemento.sb_elemento
    fill_in "Sb lista", with: @sb_elemento.sb_lista_id
    fill_in "Tipo", with: @sb_elemento.tipo
    click_on "Create Sb elemento"

    assert_text "Sb elemento was successfully created"
    click_on "Back"
  end

  test "should update Sb elemento" do
    visit sb_elemento_url(@sb_elemento)
    click_on "Edit this sb elemento", match: :first

    fill_in "Acceso", with: @sb_elemento.acceso
    check "Activo" if @sb_elemento.activo
    fill_in "Controlador", with: @sb_elemento.controlador
    fill_in "Despliegue", with: @sb_elemento.despliegue
    fill_in "Nivel", with: @sb_elemento.nivel
    fill_in "Orden", with: @sb_elemento.orden
    fill_in "Sb elemento", with: @sb_elemento.sb_elemento
    fill_in "Sb lista", with: @sb_elemento.sb_lista_id
    fill_in "Tipo", with: @sb_elemento.tipo
    click_on "Update Sb elemento"

    assert_text "Sb elemento was successfully updated"
    click_on "Back"
  end

  test "should destroy Sb elemento" do
    visit sb_elemento_url(@sb_elemento)
    click_on "Destroy this sb elemento", match: :first

    assert_text "Sb elemento was successfully destroyed"
  end
end
