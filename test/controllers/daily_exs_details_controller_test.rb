require 'test_helper'

class DailyExsDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_exs_detail = daily_exs_details(:one)
  end

  test "should get index" do
    get daily_exs_details_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_exs_detail_url
    assert_response :success
  end

  test "should create daily_exs_detail" do
    assert_difference('DailyExsDetail.count') do
      post daily_exs_details_url, params: { daily_exs_detail: { amount: @daily_exs_detail.amount, user_id: @daily_exs_detail.user_id } }
    end

    assert_redirected_to daily_exs_detail_url(DailyExsDetail.last)
  end

  test "should show daily_exs_detail" do
    get daily_exs_detail_url(@daily_exs_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_exs_detail_url(@daily_exs_detail)
    assert_response :success
  end

  test "should update daily_exs_detail" do
    patch daily_exs_detail_url(@daily_exs_detail), params: { daily_exs_detail: { amount: @daily_exs_detail.amount, user_id: @daily_exs_detail.user_id } }
    assert_redirected_to daily_exs_detail_url(@daily_exs_detail)
  end

  test "should destroy daily_exs_detail" do
    assert_difference('DailyExsDetail.count', -1) do
      delete daily_exs_detail_url(@daily_exs_detail)
    end

    assert_redirected_to daily_exs_details_url
  end
end
