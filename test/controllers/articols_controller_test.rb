require 'test_helper'

class ArticolsControllerTest < ActionController::TestCase
  setup do
    @articol = articols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create articol" do
    assert_difference('Articol.count') do
      post :create, articol: { avatar: @articol.avatar, content: @articol.content, name: @articol.name }
    end

    assert_redirected_to articol_path(assigns(:articol))
  end

  test "should show articol" do
    get :show, id: @articol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @articol
    assert_response :success
  end

  test "should update articol" do
    patch :update, id: @articol, articol: { avatar: @articol.avatar, content: @articol.content, name: @articol.name }
    assert_redirected_to articol_path(assigns(:articol))
  end

  test "should destroy articol" do
    assert_difference('Articol.count', -1) do
      delete :destroy, id: @articol
    end

    assert_redirected_to articols_path
  end
end
