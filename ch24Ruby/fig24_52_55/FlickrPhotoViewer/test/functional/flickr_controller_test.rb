require File.dirname(__FILE__) + '/../test_helper'
require 'flickr_controller'

# Re-raise errors caught by the controller.
class FlickrController; def rescue_action(e) raise e end; end

class FlickrControllerTest < Test::Unit::TestCase
  def setup
    @controller = FlickrController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
