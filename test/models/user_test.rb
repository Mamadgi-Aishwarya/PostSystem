require 'test_helper'

class UserTest < ActiveSupport::TestCase
  fixtures :users
   
  def setup
    @user = User.new(name:"Minnu",password:"secret")
  end
  
  test "user should have unique name" do
    @user.name=users(:two).name
    assert @user.invalid?
    assert_equal ["has already been taken"],@user.errors[:name]
  end

  test "user should not be empty" do
    @user.name=""
    assert @user.invalid?
    assert @user.errors[:name].any?
  end

 # test "description minimum length" do
 # @user.description="hello"
 # assert_equal ["is too short (minimum is 20 characters)"],@user.errors[:description]
 # end

end
