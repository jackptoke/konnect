require 'test_helper'

class InterpreterDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interpreter_detail = interpreter_details(:one)
  end

  test "should get index" do
    get interpreter_details_url
    assert_response :success
  end

  test "should get new" do
    get new_interpreter_detail_url
    assert_response :success
  end

  test "should create interpreter_detail" do
    assert_difference('InterpreterDetail.count') do
      post interpreter_details_url, params: { interpreter_detail: { abn: @interpreter_detail.abn, address_id: @interpreter_detail.address_id, first_name: @interpreter_detail.first_name, interpreter_id: @interpreter_detail.interpreter_id, last_name: @interpreter_detail.last_name, mobile_no: @interpreter_detail.mobile_no, payment_rate: @interpreter_detail.payment_rate, rating_score: @interpreter_detail.rating_score, sex: @interpreter_detail.sex } }
    end

    assert_redirected_to interpreter_detail_url(InterpreterDetail.last)
  end

  test "should show interpreter_detail" do
    get interpreter_detail_url(@interpreter_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_interpreter_detail_url(@interpreter_detail)
    assert_response :success
  end

  test "should update interpreter_detail" do
    patch interpreter_detail_url(@interpreter_detail), params: { interpreter_detail: { abn: @interpreter_detail.abn, address_id: @interpreter_detail.address_id, first_name: @interpreter_detail.first_name, interpreter_id: @interpreter_detail.interpreter_id, last_name: @interpreter_detail.last_name, mobile_no: @interpreter_detail.mobile_no, payment_rate: @interpreter_detail.payment_rate, rating_score: @interpreter_detail.rating_score, sex: @interpreter_detail.sex } }
    assert_redirected_to interpreter_detail_url(@interpreter_detail)
  end

  test "should destroy interpreter_detail" do
    assert_difference('InterpreterDetail.count', -1) do
      delete interpreter_detail_url(@interpreter_detail)
    end

    assert_redirected_to interpreter_details_url
  end
end
