require "application_system_test_case"

class EmpleadosTest < ApplicationSystemTestCase
  setup do
    @empleado = empleados(:one)
  end

  test "visiting the index" do
    visit empleados_url
    assert_selector "h1", text: "Empleados"
  end

  test "should create empleado" do
    visit empleados_url
    click_on "New empleado"

    fill_in "Apellido materno", with: @empleado.apellido_materno
    fill_in "Apellido paterno", with: @empleado.apellido_paterno
    fill_in "Direccion", with: @empleado.direccion
    fill_in "Nombres", with: @empleado.nombres
    fill_in "Rut", with: @empleado.rut
    fill_in "Sexo", with: @empleado.sexo
    fill_in "Telefono", with: @empleado.telefono
    click_on "Create Empleado"

    assert_text "Empleado was successfully created"
    click_on "Back"
  end

  test "should update Empleado" do
    visit empleado_url(@empleado)
    click_on "Edit this empleado", match: :first

    fill_in "Apellido materno", with: @empleado.apellido_materno
    fill_in "Apellido paterno", with: @empleado.apellido_paterno
    fill_in "Direccion", with: @empleado.direccion
    fill_in "Nombres", with: @empleado.nombres
    fill_in "Rut", with: @empleado.rut
    fill_in "Sexo", with: @empleado.sexo
    fill_in "Telefono", with: @empleado.telefono
    click_on "Update Empleado"

    assert_text "Empleado was successfully updated"
    click_on "Back"
  end

  test "should destroy Empleado" do
    visit empleado_url(@empleado)
    click_on "Destroy this empleado", match: :first

    assert_text "Empleado was successfully destroyed"
  end
end
