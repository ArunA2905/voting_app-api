require "test_helper"

class UserStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_stat = user_stats(:one)
  end

  test "should get index" do
    get user_stats_url, as: :json
    assert_response :success
  end

  test "should create user_stat" do
    assert_difference("UserStat.count") do
      post user_stats_url, params: { user_stat: { lastVote: @user_stat.lastVote, userId: @user_stat.userId, voteStatus: @user_stat.voteStatus } }, as: :json
    end

    assert_response :created
  end

  test "should show user_stat" do
    get user_stat_url(@user_stat), as: :json
    assert_response :success
  end

  test "should update user_stat" do
    patch user_stat_url(@user_stat), params: { user_stat: { lastVote: @user_stat.lastVote, userId: @user_stat.userId, voteStatus: @user_stat.voteStatus } }, as: :json
    assert_response :success
  end

  test "should destroy user_stat" do
    assert_difference("UserStat.count", -1) do
      delete user_stat_url(@user_stat), as: :json
    end

    assert_response :no_content
  end
end
