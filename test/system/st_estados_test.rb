require "application_system_test_case"

class StEstadosTest < ApplicationSystemTestCase
  setup do
    @st_estado = st_estados(:one)
  end

  test "visiting the index" do
    visit st_estados_url
    assert_selector "h1", text: "St estados"
  end

  test "should create st estado" do
    visit st_estados_url
    click_on "New st estado"

    fill_in "Destinos", with: @st_estado.destinos
    fill_in "Destinos admin", with: @st_estado.destinos_admin
    fill_in "Orden", with: @st_estado.orden
    fill_in "St estado", with: @st_estado.st_estado
    fill_in "St modelo", with: @st_estado.st_modelo_id
    click_on "Create St estado"

    assert_text "St estado was successfully created"
    click_on "Back"
  end

  test "should update St estado" do
    visit st_estado_url(@st_estado)
    click_on "Edit this st estado", match: :first

    fill_in "Destinos", with: @st_estado.destinos
    fill_in "Destinos admin", with: @st_estado.destinos_admin
    fill_in "Orden", with: @st_estado.orden
    fill_in "St estado", with: @st_estado.st_estado
    fill_in "St modelo", with: @st_estado.st_modelo_id
    click_on "Update St estado"

    assert_text "St estado was successfully updated"
    click_on "Back"
  end

  test "should destroy St estado" do
    visit st_estado_url(@st_estado)
    click_on "Destroy this st estado", match: :first

    assert_text "St estado was successfully destroyed"
  end
end
