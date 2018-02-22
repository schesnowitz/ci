require 'test_helper'

class WorldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @world = worlds(:one)
  end

  test "should get index" do
    get worlds_url
    assert_response :success
  end

  test "should get new" do
    get new_world_url
    assert_response :success
  end

  test "should create world" do
    assert_difference('World.count') do
      post worlds_url, params: { world: { image_url: @world.image_url, source: @world.source, title: @world.title, title_url: @world.title_url } }
    end

    assert_redirected_to world_url(World.last)
  end

  test "should show world" do
    get world_url(@world)
    assert_response :success
  end

  test "should get edit" do
    get edit_world_url(@world)
    assert_response :success
  end

  test "should update world" do
    patch world_url(@world), params: { world: { image_url: @world.image_url, source: @world.source, title: @world.title, title_url: @world.title_url } }
    assert_redirected_to world_url(@world)
  end

  test "should destroy world" do
    assert_difference('World.count', -1) do
      delete world_url(@world)
    end

    assert_redirected_to worlds_url
  end
end
