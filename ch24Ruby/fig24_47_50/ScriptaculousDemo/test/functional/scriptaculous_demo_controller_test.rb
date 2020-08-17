require File.dirname(__FILE__) + '/../test_helper'
require 'scriptaculous_demo_controller'

# Re-raise errors caught by the controller.
class ScriptaculousDemoController; def rescue_action(e) raise e end; end

class ScriptaculousDemoControllerTest < Test::Unit::TestCase
  def setup
    @controller = ScriptaculousDemoController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
