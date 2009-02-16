require 'test_helper'

class VolunteersControllerTest < ActionController::TestCase

  should "get new" do
    get :new
    assert_response :success
  end

  should "create volunteer" do
    assert_difference('Volunteer.count') do
      post :create, :volunteer => Volunteer.plan
    end

    assert_response :success
  end

end
