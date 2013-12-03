require 'test_helper'

class RankHistoriesControllerTest < ActionController::TestCase
  setup do
    @rank_history = rank_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rank_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rank_history" do
    assert_difference('RankHistory.count') do
      post :create, rank_history: { date: @rank_history.date, number: @rank_history.number, rank: @rank_history.rank }
    end

    assert_redirected_to rank_history_path(assigns(:rank_history))
  end

  test "should show rank_history" do
    get :show, id: @rank_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rank_history
    assert_response :success
  end

  test "should update rank_history" do
    patch :update, id: @rank_history, rank_history: { date: @rank_history.date, number: @rank_history.number, rank: @rank_history.rank }
    assert_redirected_to rank_history_path(assigns(:rank_history))
  end

  test "should destroy rank_history" do
    assert_difference('RankHistory.count', -1) do
      delete :destroy, id: @rank_history
    end

    assert_redirected_to rank_histories_path
  end
end
