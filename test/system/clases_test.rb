require "application_system_test_case"

class ClasesTest < ApplicationSystemTestCase
  setup do
    @clase = clases(:one)
  end

  test "visiting the index" do
    visit clases_url
    assert_selector "h1", text: "Clases"
  end

  test "creating a Clase" do
    visit clases_url
    click_on "New Clase"

    fill_in "Text transcription", with: @clase.text_transcription
    fill_in "Title", with: @clase.title
    fill_in "Video link", with: @clase.video_link
    click_on "Create Clase"

    assert_text "Clase was successfully created"
    click_on "Back"
  end

  test "updating a Clase" do
    visit clases_url
    click_on "Edit", match: :first

    fill_in "Text transcription", with: @clase.text_transcription
    fill_in "Title", with: @clase.title
    fill_in "Video link", with: @clase.video_link
    click_on "Update Clase"

    assert_text "Clase was successfully updated"
    click_on "Back"
  end

  test "destroying a Clase" do
    visit clases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clase was successfully destroyed"
  end
end
