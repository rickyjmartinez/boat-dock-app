require "application_system_test_case"

class DocksTest < ApplicationSystemTestCase
  setup do
    @dock = docks(:one)
  end

  test "visiting the index" do
    visit docks_url
    assert_selector "h1", text: "Docks"
  end

  test "should create dock" do
    visit docks_url
    click_on "New dock"

    check "Availability" if @dock.availability
    fill_in "Boat", with: @dock.boat_id
    fill_in "Cost", with: @dock.cost
    fill_in "Dock size", with: @dock.dock_size
    fill_in "Unit", with: @dock.unit
    click_on "Create Dock"

    assert_text "Dock was successfully created"
    click_on "Back"
  end

  test "should update Dock" do
    visit dock_url(@dock)
    click_on "Edit this dock", match: :first

    check "Availability" if @dock.availability
    fill_in "Boat", with: @dock.boat_id
    fill_in "Cost", with: @dock.cost
    fill_in "Dock size", with: @dock.dock_size
    fill_in "Unit", with: @dock.unit
    click_on "Update Dock"

    assert_text "Dock was successfully updated"
    click_on "Back"
  end

  test "should destroy Dock" do
    visit dock_url(@dock)
    click_on "Destroy this dock", match: :first

    assert_text "Dock was successfully destroyed"
  end
end
