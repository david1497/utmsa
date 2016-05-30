require 'test_helper'

class AnouncesControllerTest < ActionController::TestCase
  setup do
    @anounce = anounces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anounces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anounce" do
    assert_difference('Anounce.count') do
      post :create, anounce: { content: @anounce.content, grupe_id: @anounce.grupe_id, titlu: @anounce.titlu }
    end

    assert_redirected_to anounce_path(assigns(:anounce))
  end

  test "should show anounce" do
    get :show, id: @anounce
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anounce
    assert_response :success
  end

  test "should update anounce" do
    patch :update, id: @anounce, anounce: { content: @anounce.content, grupe_id: @anounce.grupe_id, titlu: @anounce.titlu }
    assert_redirected_to anounce_path(assigns(:anounce))
  end

  test "should destroy anounce" do
    assert_difference('Anounce.count', -1) do
      delete :destroy, id: @anounce
    end

    assert_redirected_to anounces_path
  end
end
