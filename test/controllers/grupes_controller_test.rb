require 'test_helper'

class GrupesControllerTest < ActionController::TestCase
  setup do
    @grupe = grupes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grupe" do
    assert_difference('Grupe.count') do
      post :create, grupe: { name: @grupe.name }
    end

    assert_redirected_to grupe_path(assigns(:grupe))
  end

  test "should show grupe" do
    get :show, id: @grupe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grupe
    assert_response :success
  end

  test "should update grupe" do
    patch :update, id: @grupe, grupe: { name: @grupe.name }
    assert_redirected_to grupe_path(assigns(:grupe))
  end

  test "should destroy grupe" do
    assert_difference('Grupe.count', -1) do
      delete :destroy, id: @grupe
    end

    assert_redirected_to grupes_path
  end
end
