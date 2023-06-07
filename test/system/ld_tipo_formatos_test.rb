require "application_system_test_case"

class LdTipoFormatosTest < ApplicationSystemTestCase
  setup do
    @ld_tipo_formato = ld_tipo_formatos(:one)
  end

  test "visiting the index" do
    visit ld_tipo_formatos_url
    assert_selector "h1", text: "Ld tipo formatos"
  end

  test "should create ld tipo formato" do
    visit ld_tipo_formatos_url
    click_on "New ld tipo formato"

    fill_in "Ld tipo formato", with: @ld_tipo_formato.ld_tipo_formato
    click_on "Create Ld tipo formato"

    assert_text "Ld tipo formato was successfully created"
    click_on "Back"
  end

  test "should update Ld tipo formato" do
    visit ld_tipo_formato_url(@ld_tipo_formato)
    click_on "Edit this ld tipo formato", match: :first

    fill_in "Ld tipo formato", with: @ld_tipo_formato.ld_tipo_formato
    click_on "Update Ld tipo formato"

    assert_text "Ld tipo formato was successfully updated"
    click_on "Back"
  end

  test "should destroy Ld tipo formato" do
    visit ld_tipo_formato_url(@ld_tipo_formato)
    click_on "Destroy this ld tipo formato", match: :first

    assert_text "Ld tipo formato was successfully destroyed"
  end
end
