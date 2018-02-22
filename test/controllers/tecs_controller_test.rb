require 'test_helper'

class TecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tec = tecs(:one)
  end

  test "should get index" do
    get tecs_url
    assert_response :success
  end

  test "should get new" do
    get new_tec_url
    assert_response :success
  end

  test "should create tec" do
    assert_difference('Tec.count') do
      post tecs_url, params: { tec: { image_url: @tec.image_url, source: @tec.source, title: @tec.title, title_url: @tec.title_url } }
    end

    assert_redirected_to tec_url(Tec.last)
  end

  test "should show tec" do
    get tec_url(@tec)
    assert_response :success
  end

  test "should get edit" do
    get edit_tec_url(@tec)
    assert_response :success
  end

  test "should update tec" do
    patch tec_url(@tec), params: { tec: { image_url: @tec.image_url, source: @tec.source, title: @tec.title, title_url: @tec.title_url } }
    assert_redirected_to tec_url(@tec)
  end

  test "should destroy tec" do
    assert_difference('Tec.count', -1) do
      delete tec_url(@tec)
    end

    assert_redirected_to tecs_url
  end
end
