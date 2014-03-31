require 'test_helper'

class MagazinePageLayoutsControllerTest < ActionController::TestCase
  setup do
    @magazine_page_layout = magazine_page_layouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:magazine_page_layouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create magazine_page_layout" do
    assert_difference('MagazinePageLayout.count') do
      post :create, magazine_page_layout: { description: @magazine_page_layout.description, name: @magazine_page_layout.name, preview_file: @magazine_page_layout.preview_file, template_file: @magazine_page_layout.template_file }
    end

    assert_redirected_to magazine_page_layout_path(assigns(:magazine_page_layout))
  end

  test "should show magazine_page_layout" do
    get :show, id: @magazine_page_layout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @magazine_page_layout
    assert_response :success
  end

  test "should update magazine_page_layout" do
    patch :update, id: @magazine_page_layout, magazine_page_layout: { description: @magazine_page_layout.description, name: @magazine_page_layout.name, preview_file: @magazine_page_layout.preview_file, template_file: @magazine_page_layout.template_file }
    assert_redirected_to magazine_page_layout_path(assigns(:magazine_page_layout))
  end

  test "should destroy magazine_page_layout" do
    assert_difference('MagazinePageLayout.count', -1) do
      delete :destroy, id: @magazine_page_layout
    end

    assert_redirected_to magazine_page_layouts_path
  end
end
