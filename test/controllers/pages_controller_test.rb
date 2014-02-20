require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get asso" do
    get :asso
    assert_response :success
  end

  test "should get asso1" do
    get :asso1
    assert_response :success
  end

  test "should get asso2" do
    get :asso2
    assert_response :success
  end

  test "should get sk" do
    get :sk
    assert_response :success
  end

  test "should get sk1" do
    get :sk1
    assert_response :success
  end

  test "should get sk2" do
    get :sk2
    assert_response :success
  end

  test "should get manif" do
    get :manif
    assert_response :success
  end

  test "should get media" do
    get :media
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
