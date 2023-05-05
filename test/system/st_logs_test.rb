require "application_system_test_case"

class StLogsTest < ApplicationSystemTestCase
  setup do
    @st_log = st_logs(:one)
  end

  test "visiting the index" do
    visit st_logs_url
    assert_selector "h1", text: "St logs"
  end

  test "should create st log" do
    visit st_logs_url
    click_on "New st log"

    fill_in "App perfil", with: @st_log.app_perfil_id
    fill_in "Class name", with: @st_log.class_name
    fill_in "E destino", with: @st_log.e_destino
    fill_in "E origen", with: @st_log.e_origen
    fill_in "Objeto", with: @st_log.objeto_id
    click_on "Create St log"

    assert_text "St log was successfully created"
    click_on "Back"
  end

  test "should update St log" do
    visit st_log_url(@st_log)
    click_on "Edit this st log", match: :first

    fill_in "App perfil", with: @st_log.app_perfil_id
    fill_in "Class name", with: @st_log.class_name
    fill_in "E destino", with: @st_log.e_destino
    fill_in "E origen", with: @st_log.e_origen
    fill_in "Objeto", with: @st_log.objeto_id
    click_on "Update St log"

    assert_text "St log was successfully updated"
    click_on "Back"
  end

  test "should destroy St log" do
    visit st_log_url(@st_log)
    click_on "Destroy this st log", match: :first

    assert_text "St log was successfully destroyed"
  end
end
