require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end

  test "show activated profile" do
    log_in_as(@user)
    get user_path(@user)
    assert_template 'users/show'
    assert @user.activated?
  end
end
