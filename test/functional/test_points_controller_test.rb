require 'test_helper'

class TestPointsControllerTest < ActionController::TestCase
  setup do
    @test_point = test_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_point" do
    assert_difference('TestPoint.count') do
      post :create, test_point: { activity: @test_point.activity, description: @test_point.description, failMsg: @test_point.failMsg, name: @test_point.name, result: @test_point.result, test_case_id: @test_point.test_case_id }
    end

    assert_redirected_to test_point_path(assigns(:test_point))
  end

  test "should show test_point" do
    get :show, id: @test_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_point
    assert_response :success
  end

  test "should update test_point" do
    put :update, id: @test_point, test_point: { activity: @test_point.activity, description: @test_point.description, failMsg: @test_point.failMsg, name: @test_point.name, result: @test_point.result, test_case_id: @test_point.test_case_id }
    assert_redirected_to test_point_path(assigns(:test_point))
  end

  test "should destroy test_point" do
    assert_difference('TestPoint.count', -1) do
      delete :destroy, id: @test_point
    end

    assert_redirected_to test_points_path
  end
end
