require 'test_helper'

class GooglesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @google = googles(:one)
  end

  test "should get index" do
    get googles_url
    assert_response :success
  end

  test "should get new" do
    get new_google_url
    assert_response :success
  end

  test "should create google" do
    assert_difference('Google.count') do
      post googles_url, params: { google: { body: @google.body, image_url: @google.image_url, source: @google.source, title: @google.title, title_url: @google.title_url } }
    end

    assert_redirected_to google_url(Google.last)
  end

  test "should show google" do
    get google_url(@google)
    assert_response :success
  end

  test "should get edit" do
    get edit_google_url(@google)
    assert_response :success
  end

  test "should update google" do
    patch google_url(@google), params: { google: { body: @google.body, image_url: @google.image_url, source: @google.source, title: @google.title, title_url: @google.title_url } }
    assert_redirected_to google_url(@google)
  end

  test "should destroy google" do
    assert_difference('Google.count', -1) do
      delete google_url(@google)
    end

    assert_redirected_to googles_url
  end
end
