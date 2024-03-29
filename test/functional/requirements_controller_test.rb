require 'test_helper'

class RequirementsControllerTest < ActionController::TestCase
  setup do
    @requirement = requirements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requirements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create requirement" do
    assert_difference('Requirement.count') do
      post :create, requirement: { description: @requirement.description, name: @requirement.name, test_case_id: @requirement.test_case_id }
    end

    assert_redirected_to requirement_path(assigns(:requirement))
  end

  test "should show requirement" do
    get :show, id: @requirement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @requirement
    assert_response :success
  end

  test "should update requirement" do
    put :update, id: @requirement, requirement: { description: @requirement.description, name: @requirement.name, test_case_id: @requirement.test_case_id }
    assert_redirected_to requirement_path(assigns(:requirement))
  end

  test "should destroy requirement" do
    assert_difference('Requirement.count', -1) do
      delete :destroy, id: @requirement
    end

    assert_redirected_to requirements_path
  end
end
