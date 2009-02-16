require 'test_helper'

class VolunteerTest < ActiveSupport::TestCase
  
  should "create a volunteer" do
    # This is really just to make sure our blueprint isn't broken.
    assert_not_nil Volunteer.make
  end
  
end
