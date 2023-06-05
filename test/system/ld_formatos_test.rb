require "application_system_test_case"

class LdFormatosTest < ApplicationSystemTestCase
  setup do
    @ld_formato = ld_formatos(:one)
  end

  test "visiting the index" do
    visit ld_formatos_url
    assert_selector "h1", text: "Ld formatos"
  end

  test "should create ld formato" do
    visit ld_formatos_url
    click_on "New ld formato"

    fill_in "Ld formato", with: @ld_formato.ld_formato
    fill_in "Ownr class", with: @ld_formato.ownr_class
    fill_in "Ownr", with: @ld_formato.ownr_id
    click_on "Create Ld formato"

    assert_text "Ld formato was successfully created"
    click_on "Back"
  end

  test "should update Ld formato" do
    visit ld_formato_url(@ld_formato)
    click_on "Edit this ld formato", match: :first

    fill_in "Ld formato", with: @ld_formato.ld_formato
    fill_in "Ownr class", with: @ld_formato.ownr_class
    fill_in "Ownr", with: @ld_formato.ownr_id
    click_on "Update Ld formato"

    assert_text "Ld formato was successfully updated"
    click_on "Back"
  end

  test "should destroy Ld formato" do
    visit ld_formato_url(@ld_formato)
    click_on "Destroy this ld formato", match: :first

    assert_text "Ld formato was successfully destroyed"
  end
end
