require 'test_helper'

class ProjectUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_update = project_updates(:one)
  end

  test "should get index" do
    get project_updates_url
    assert_response :success
  end

  test "should get new" do
    get new_project_update_url
    assert_response :success
  end

  test "should create project_update" do
    assert_difference('ProjectUpdate.count') do
      post project_updates_url, params: { project_update: { action: @project_update.action, project_id: @project_update.project_id, title: @project_update.title } }
    end

    assert_redirected_to project_update_url(ProjectUpdate.last)
  end

  test "should show project_update" do
    get project_update_url(@project_update)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_update_url(@project_update)
    assert_response :success
  end

  test "should update project_update" do
    patch project_update_url(@project_update), params: { project_update: { action: @project_update.action, project_id: @project_update.project_id, title: @project_update.title } }
    assert_redirected_to project_update_url(@project_update)
  end

  test "should destroy project_update" do
    assert_difference('ProjectUpdate.count', -1) do
      delete project_update_url(@project_update)
    end

    assert_redirected_to project_updates_url
  end
end
