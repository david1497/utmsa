require 'test_helper'

class ContactesControllerTest < ActionController::TestCase
  setup do
    @contacte = contactes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contactes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contacte" do
    assert_difference('Contacte.count') do
      post :create, contacte: { content: @contacte.content, title: @contacte.title }
    end

    assert_redirected_to contacte_path(assigns(:contacte))
  end

  test "should show contacte" do
    get :show, id: @contacte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contacte
    assert_response :success
  end

  test "should update contacte" do
    patch :update, id: @contacte, contacte: { content: @contacte.content, title: @contacte.title }
    assert_redirected_to contacte_path(assigns(:contacte))
  end

  test "should destroy contacte" do
    assert_difference('Contacte.count', -1) do
      delete :destroy, id: @contacte
    end

    assert_redirected_to contactes_path
  end
end
