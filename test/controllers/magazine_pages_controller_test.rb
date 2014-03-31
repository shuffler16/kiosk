require 'test_helper'

class MagazinePagesControllerTest < ActionController::TestCase
  setup do
    @magazine_page = magazine_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:magazine_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create magazine_page" do
    assert_difference('MagazinePage.count') do
      post :create, magazine_page: { magazine _id: @magazine_page.magazine _id, page: @magazine_page.page, page_layout _id: @magazine_page.page_layout _id }
    end

    assert_redirected_to magazine_page_path(assigns(:magazine_page))
  end

  test "should show magazine_page" do
    get :show, id: @magazine_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @magazine_page
    assert_response :success
  end

  test "should update magazine_page" do
    patch :update, id: @magazine_page, magazine_page: { magazine _id: @magazine_page.magazine _id, page: @magazine_page.page, page_layout _id: @magazine_page.page_layout _id }
    assert_redirected_to magazine_page_path(assigns(:magazine_page))
  end

  test "should destroy magazine_page" do
    assert_difference('MagazinePage.count', -1) do
      delete :destroy, id: @magazine_page
    end

    assert_redirected_to magazine_pages_path
  end
end
