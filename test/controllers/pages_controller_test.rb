require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page = pages(:one)
  end

  test "should get index" do
    get pages_url
    assert_response :success
  end

  test "should get new" do
    get new_page_url
    assert_response :success
  end

  test "should create page" do
    assert_difference('Page.count') do
      post pages_url, params: { page: { string_1: @page.string_1, string_10: @page.string_10, string_11: @page.string_11, string_12: @page.string_12, string_13: @page.string_13, string_14: @page.string_14, string_15: @page.string_15, string_2: @page.string_2, string_3: @page.string_3, string_4: @page.string_4, string_5: @page.string_5, string_6: @page.string_6, string_7: @page.string_7, string_8: @page.string_8, string_9: @page.string_9, template_one_id: @page.template_one_id, title: @page.title, url: @page.url } }
    end

    assert_redirected_to page_url(Page.last)
  end

  test "should show page" do
    get page_url(@page)
    assert_response :success
  end

  test "should get edit" do
    get edit_page_url(@page)
    assert_response :success
  end

  test "should update page" do
    patch page_url(@page), params: { page: { string_1: @page.string_1, string_10: @page.string_10, string_11: @page.string_11, string_12: @page.string_12, string_13: @page.string_13, string_14: @page.string_14, string_15: @page.string_15, string_2: @page.string_2, string_3: @page.string_3, string_4: @page.string_4, string_5: @page.string_5, string_6: @page.string_6, string_7: @page.string_7, string_8: @page.string_8, string_9: @page.string_9, template_one_id: @page.template_one_id, title: @page.title, url: @page.url } }
    assert_redirected_to page_url(@page)
  end

  test "should destroy page" do
    assert_difference('Page.count', -1) do
      delete page_url(@page)
    end

    assert_redirected_to pages_url
  end
end
