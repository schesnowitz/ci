require "application_system_test_case"

class AppSettingsTest < ApplicationSystemTestCase
  setup do
    @app_setting = app_settings(:one)
  end

  test "visiting the index" do
    visit app_settings_url
    assert_selector "h1", text: "App Settings"
  end

  test "creating a App setting" do
    visit app_settings_url
    click_on "New App Setting"

    fill_in "App Name", with: @app_setting.app_name
    fill_in "City", with: @app_setting.city
    fill_in "Email", with: @app_setting.email
    fill_in "Postal Code", with: @app_setting.postal_code
    fill_in "State", with: @app_setting.state
    fill_in "Street", with: @app_setting.street
    fill_in "Tab Name", with: @app_setting.tab_name
    click_on "Create App setting"

    assert_text "App setting was successfully created"
    click_on "Back"
  end

  test "updating a App setting" do
    visit app_settings_url
    click_on "Edit", match: :first

    fill_in "App Name", with: @app_setting.app_name
    fill_in "City", with: @app_setting.city
    fill_in "Email", with: @app_setting.email
    fill_in "Postal Code", with: @app_setting.postal_code
    fill_in "State", with: @app_setting.state
    fill_in "Street", with: @app_setting.street
    fill_in "Tab Name", with: @app_setting.tab_name
    click_on "Update App setting"

    assert_text "App setting was successfully updated"
    click_on "Back"
  end

  test "destroying a App setting" do
    visit app_settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "App setting was successfully destroyed"
  end
end
