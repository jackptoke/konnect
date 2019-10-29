require "application_system_test_case"

class InterpreterDetailsTest < ApplicationSystemTestCase
  setup do
    @interpreter_detail = interpreter_details(:one)
  end

  test "visiting the index" do
    visit interpreter_details_url
    assert_selector "h1", text: "Interpreter Details"
  end

  test "creating a Interpreter detail" do
    visit interpreter_details_url
    click_on "New Interpreter Detail"

    fill_in "Abn", with: @interpreter_detail.abn
    fill_in "Address", with: @interpreter_detail.address_id
    fill_in "First name", with: @interpreter_detail.first_name
    fill_in "Interpreter", with: @interpreter_detail.interpreter_id
    fill_in "Last name", with: @interpreter_detail.last_name
    fill_in "Mobile no", with: @interpreter_detail.mobile_no
    fill_in "Payment rate", with: @interpreter_detail.payment_rate
    fill_in "Rating score", with: @interpreter_detail.rating_score
    fill_in "Sex", with: @interpreter_detail.sex
    click_on "Create Interpreter detail"

    assert_text "Interpreter detail was successfully created"
    click_on "Back"
  end

  test "updating a Interpreter detail" do
    visit interpreter_details_url
    click_on "Edit", match: :first

    fill_in "Abn", with: @interpreter_detail.abn
    fill_in "Address", with: @interpreter_detail.address_id
    fill_in "First name", with: @interpreter_detail.first_name
    fill_in "Interpreter", with: @interpreter_detail.interpreter_id
    fill_in "Last name", with: @interpreter_detail.last_name
    fill_in "Mobile no", with: @interpreter_detail.mobile_no
    fill_in "Payment rate", with: @interpreter_detail.payment_rate
    fill_in "Rating score", with: @interpreter_detail.rating_score
    fill_in "Sex", with: @interpreter_detail.sex
    click_on "Update Interpreter detail"

    assert_text "Interpreter detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Interpreter detail" do
    visit interpreter_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Interpreter detail was successfully destroyed"
  end
end
