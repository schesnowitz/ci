require 'test_helper'

class AppSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_setting = app_settings(:one)
  end

  test "should get index" do
    get app_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_app_setting_url
    assert_response :success
  end

  test "should create app_setting" do
    assert_difference('AppSetting.count') do
      post app_settings_url, params: { app_setting: { app_name: @app_setting.app_name, city: @app_setting.city, email: @app_setting.email, postal_code: @app_setting.postal_code, state: @app_setting.state, street: @app_setting.street, tab_name: @app_setting.tab_name } }
    end

    assert_redirected_to app_setting_url(AppSetting.last)
  end

  test "should show app_setting" do
    get app_setting_url(@app_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_setting_url(@app_setting)
    assert_response :success
  end

  test "should update app_setting" do
    patch app_setting_url(@app_setting), params: { app_setting: { app_name: @app_setting.app_name, city: @app_setting.city, email: @app_setting.email, postal_code: @app_setting.postal_code, state: @app_setting.state, street: @app_setting.street, tab_name: @app_setting.tab_name } }
    assert_redirected_to app_setting_url(@app_setting)
  end

  test "should destroy app_setting" do
    assert_difference('AppSetting.count', -1) do
      delete app_setting_url(@app_setting)
    end

    assert_redirected_to app_settings_url
  end
end
