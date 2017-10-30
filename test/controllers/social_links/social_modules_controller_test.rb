require 'test_helper'

module SocialLinks
  class SocialModulesControllerTest < ActionController::TestCase
    setup do
      @social_module = social_links_social_modules(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:social_modules)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create social_module" do
      assert_difference('SocialModule.count') do
        post :create, social_module: {  }
      end

      assert_redirected_to social_module_path(assigns(:social_module))
    end

    test "should show social_module" do
      get :show, id: @social_module
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @social_module
      assert_response :success
    end

    test "should update social_module" do
      patch :update, id: @social_module, social_module: {  }
      assert_redirected_to social_module_path(assigns(:social_module))
    end

    test "should destroy social_module" do
      assert_difference('SocialModule.count', -1) do
        delete :destroy, id: @social_module
      end

      assert_redirected_to social_modules_path
    end
  end
end
