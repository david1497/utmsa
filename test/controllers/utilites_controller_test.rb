require 'test_helper'

class UtilitesControllerTest < ActionController::TestCase
  setup do
    @utilite = utilites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:utilites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create utilite" do
    assert_difference('Utilite.count') do
      post :create, utilite: { avatar: @utilite.avatar, title: @utilite.title }
    end

    assert_redirected_to utilite_path(assigns(:utilite))
  end

  test "should show utilite" do
    get :show, id: @utilite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @utilite
    assert_response :success
  end

  test "should update utilite" do
    patch :update, id: @utilite, utilite: { avatar: @utilite.avatar, title: @utilite.title }
    assert_redirected_to utilite_path(assigns(:utilite))
  end

  test "should destroy utilite" do
    assert_difference('Utilite.count', -1) do
      delete :destroy, id: @utilite
    end

    assert_redirected_to utilites_path
  end
end
