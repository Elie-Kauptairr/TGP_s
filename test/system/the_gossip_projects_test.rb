require "application_system_test_case"

class TheGossipProjectsTest < ApplicationSystemTestCase
  setup do
    @the_gossip_project = the_gossip_projects(:one)
  end

  test "visiting the index" do
    visit the_gossip_projects_url
    assert_selector "h1", text: "The gossip projects"
  end

  test "should create the gossip project" do
    visit the_gossip_projects_url
    click_on "New the gossip project"

    fill_in "Content", with: @the_gossip_project.content
    fill_in "Title", with: @the_gossip_project.title
    click_on "Create The gossip project"

    assert_text "The gossip project was successfully created"
    click_on "Back"
  end

  test "should update The gossip project" do
    visit the_gossip_project_url(@the_gossip_project)
    click_on "Edit this the gossip project", match: :first

    fill_in "Content", with: @the_gossip_project.content
    fill_in "Title", with: @the_gossip_project.title
    click_on "Update The gossip project"

    assert_text "The gossip project was successfully updated"
    click_on "Back"
  end

  test "should destroy The gossip project" do
    visit the_gossip_project_url(@the_gossip_project)
    click_on "Destroy this the gossip project", match: :first

    assert_text "The gossip project was successfully destroyed"
  end
end
