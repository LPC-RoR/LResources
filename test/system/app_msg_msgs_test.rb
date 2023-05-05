require "application_system_test_case"

class AppMsgMsgsTest < ApplicationSystemTestCase
  setup do
    @app_msg_msg = app_msg_msgs(:one)
  end

  test "visiting the index" do
    visit app_msg_msgs_url
    assert_selector "h1", text: "App msg msgs"
  end

  test "should create app msg msg" do
    visit app_msg_msgs_url
    click_on "New app msg msg"

    fill_in "Child", with: @app_msg_msg.child_id
    fill_in "Parent", with: @app_msg_msg.parent_id
    click_on "Create App msg msg"

    assert_text "App msg msg was successfully created"
    click_on "Back"
  end

  test "should update App msg msg" do
    visit app_msg_msg_url(@app_msg_msg)
    click_on "Edit this app msg msg", match: :first

    fill_in "Child", with: @app_msg_msg.child_id
    fill_in "Parent", with: @app_msg_msg.parent_id
    click_on "Update App msg msg"

    assert_text "App msg msg was successfully updated"
    click_on "Back"
  end

  test "should destroy App msg msg" do
    visit app_msg_msg_url(@app_msg_msg)
    click_on "Destroy this app msg msg", match: :first

    assert_text "App msg msg was successfully destroyed"
  end
end
