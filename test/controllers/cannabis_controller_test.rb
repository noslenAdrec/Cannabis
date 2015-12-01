require 'test_helper'

class CannabisControllerTest < ActionController::TestCase
  setup do
    @cannabi = cannabis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cannabis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cannabi" do
    assert_difference('Cannabi.count') do
      post :create, cannabi: { exterior: @cannabi.exterior, indica: @cannabi.indica, interior: @cannabi.interior, sativa: @cannabi.sativa, usuario_id: @cannabi.usuario_id }
    end

    assert_redirected_to cannabi_path(assigns(:cannabi))
  end

  test "should show cannabi" do
    get :show, id: @cannabi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cannabi
    assert_response :success
  end

  test "should update cannabi" do
    patch :update, id: @cannabi, cannabi: { exterior: @cannabi.exterior, indica: @cannabi.indica, interior: @cannabi.interior, sativa: @cannabi.sativa, usuario_id: @cannabi.usuario_id }
    assert_redirected_to cannabi_path(assigns(:cannabi))
  end

  test "should destroy cannabi" do
    assert_difference('Cannabi.count', -1) do
      delete :destroy, id: @cannabi
    end

    assert_redirected_to cannabis_path
  end
end
