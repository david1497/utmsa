require 'test_helper'

class SubcategorisControllerTest < ActionController::TestCase
  setup do
    @subcategori = subcategoris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subcategoris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subcategori" do
    assert_difference('Subcategori.count') do
      post :create, subcategori: { avatar: @subcategori.avatar, categori_id: @subcategori.categori_id, content: @subcategori.content, name: @subcategori.name }
    end

    assert_redirected_to subcategori_path(assigns(:subcategori))
  end

  test "should show subcategori" do
    get :show, id: @subcategori
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subcategori
    assert_response :success
  end

  test "should update subcategori" do
    patch :update, id: @subcategori, subcategori: { avatar: @subcategori.avatar, categori_id: @subcategori.categori_id, content: @subcategori.content, name: @subcategori.name }
    assert_redirected_to subcategori_path(assigns(:subcategori))
  end

  test "should destroy subcategori" do
    assert_difference('Subcategori.count', -1) do
      delete :destroy, id: @subcategori
    end

    assert_redirected_to subcategoris_path
  end
end
