require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  setup do
    @job = jobs(:one)
  end

  test "visiting the index" do
    visit jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "creating a Job" do
    visit jobs_url
    click_on "New Job"

    check "Complete" if @job.complete
    fill_in "Creator", with: @job.creator_id
    fill_in "Description", with: @job.description
    fill_in "Developer", with: @job.developer_id
    fill_in "Discord", with: @job.discord
    fill_in "End date", with: @job.end_date
    fill_in "Github", with: @job.github
    fill_in "Profile", with: @job.profile_id
    fill_in "Start date", with: @job.start_date
    fill_in "Title", with: @job.title
    fill_in "Trello", with: @job.trello
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "updating a Job" do
    visit jobs_url
    click_on "Edit", match: :first

    check "Complete" if @job.complete
    fill_in "Creator", with: @job.creator_id
    fill_in "Description", with: @job.description
    fill_in "Developer", with: @job.developer_id
    fill_in "Discord", with: @job.discord
    fill_in "End date", with: @job.end_date
    fill_in "Github", with: @job.github
    fill_in "Profile", with: @job.profile_id
    fill_in "Start date", with: @job.start_date
    fill_in "Title", with: @job.title
    fill_in "Trello", with: @job.trello
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "destroying a Job" do
    visit jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job was successfully destroyed"
  end
end
