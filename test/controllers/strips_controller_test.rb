require 'test_helper'

class StripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @strip = strips(:one)
  end

  test "should get index" do
    get strips_url
    assert_response :success
  end

  test "should get new" do
    get new_strip_url
    assert_response :success
  end

  test "should create strip" do
    assert_difference('Strip.count') do
      post strips_url, params: { strip: { catch: @strip.catch, content: @strip.content, title: @strip.title } }
    end

    assert_redirected_to strip_url(Strip.last)
  end

  test "should show strip" do
    get strip_url(@strip)
    assert_response :success
  end

  test "should get edit" do
    get edit_strip_url(@strip)
    assert_response :success
  end

  test "should update strip" do
    patch strip_url(@strip), params: { strip: { catch: @strip.catch, content: @strip.content, title: @strip.title } }
    assert_redirected_to strip_url(@strip)
  end

  test "should destroy strip" do
    assert_difference('Strip.count', -1) do
      delete strip_url(@strip)
    end

    assert_redirected_to strips_url
  end
end
