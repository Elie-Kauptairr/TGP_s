require "test_helper"

class TheGossipProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @the_gossip_project = the_gossip_projects(:one)
  end

  test "should get index" do
    get the_gossip_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_the_gossip_project_url
    assert_response :success
  end

  test "should create the_gossip_project" do
    assert_difference("TheGossipProject.count") do
      post the_gossip_projects_url, params: { the_gossip_project: { content: @the_gossip_project.content, title: @the_gossip_project.title } }
    end

    assert_redirected_to the_gossip_project_url(TheGossipProject.last)
  end

  test "should show the_gossip_project" do
    get the_gossip_project_url(@the_gossip_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_the_gossip_project_url(@the_gossip_project)
    assert_response :success
  end

  test "should update the_gossip_project" do
    patch the_gossip_project_url(@the_gossip_project), params: { the_gossip_project: { content: @the_gossip_project.content, title: @the_gossip_project.title } }
    assert_redirected_to the_gossip_project_url(@the_gossip_project)
  end

  test "should destroy the_gossip_project" do
    assert_difference("TheGossipProject.count", -1) do
      delete the_gossip_project_url(@the_gossip_project)
    end

    assert_redirected_to the_gossip_projects_url
  end
end
