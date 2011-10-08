require 'test_helper'

class DeltageresControllerTest < ActionController::TestCase
  setup do
    @deltagere = deltageres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deltageres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deltagere" do
    assert_difference('Deltagere.count') do
      post :create, deltagere: @deltagere.attributes
    end

    assert_redirected_to deltagere_path(assigns(:deltagere))
  end

  test "should show deltagere" do
    get :show, id: @deltagere.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deltagere.to_param
    assert_response :success
  end

  test "should update deltagere" do
    put :update, id: @deltagere.to_param, deltagere: @deltagere.attributes
    assert_redirected_to deltagere_path(assigns(:deltagere))
  end

  test "should destroy deltagere" do
    assert_difference('Deltagere.count', -1) do
      delete :destroy, id: @deltagere.to_param
    end

    assert_redirected_to deltageres_path
  end
end
