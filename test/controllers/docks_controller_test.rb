require "test_helper"

class DocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dock = docks(:one)
  end

  test "should get index" do
    get docks_url
    assert_response :success
  end

  test "should get new" do
    get new_dock_url
    assert_response :success
  end

  test "should create dock" do
    assert_difference("Dock.count") do
      post docks_url, params: { dock: { availability: @dock.availability, boat_id: @dock.boat_id, cost: @dock.cost, dock_size: @dock.dock_size, unit: @dock.unit } }
    end

    assert_redirected_to dock_url(Dock.last)
  end

  test "should show dock" do
    get dock_url(@dock)
    assert_response :success
  end

  test "should get edit" do
    get edit_dock_url(@dock)
    assert_response :success
  end

  test "should update dock" do
    patch dock_url(@dock), params: { dock: { availability: @dock.availability, boat_id: @dock.boat_id, cost: @dock.cost, dock_size: @dock.dock_size, unit: @dock.unit } }
    assert_redirected_to dock_url(@dock)
  end

  test "should destroy dock" do
    assert_difference("Dock.count", -1) do
      delete dock_url(@dock)
    end

    assert_redirected_to docks_url
  end
end
