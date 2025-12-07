require "application_system_test_case"

class PassagesTest < ApplicationSystemTestCase
  setup do
    @passage = passages(:one)
  end

  test "visiting the index" do
    visit passages_url
    assert_selector "h1", text: "Passages"
  end

  test "should create passage" do
    visit passages_url
    click_on "New passage"

    fill_in "Description", with: @passage.description
    fill_in "Myscore", with: @passage.myscore
    fill_in "Piece", with: @passage.piece_id
    fill_in "Title", with: @passage.title
    click_on "Create Passage"

    assert_text "Passage was successfully created"
    click_on "Back"
  end

  test "should update Passage" do
    visit passage_url(@passage)
    click_on "Edit this passage", match: :first

    fill_in "Description", with: @passage.description
    fill_in "Myscore", with: @passage.myscore
    fill_in "Piece", with: @passage.piece_id
    fill_in "Title", with: @passage.title
    click_on "Update Passage"

    assert_text "Passage was successfully updated"
    click_on "Back"
  end

  test "should destroy Passage" do
    visit passage_url(@passage)
    click_on "Destroy this passage", match: :first

    assert_text "Passage was successfully destroyed"
  end
end
