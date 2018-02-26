require "test_helper"

class SharedcypressTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Sharedcypress::VERSION
  end

# test measure display
  def test_no_IPP_display
    assert true
    #create file
    #"Measure Breakdown Unavailable"
    #"File must validate and patient must fall into the IPP for Measure Breakdown view. "
  end
#doesn't display for no IPP
#has populations and variables
#collapsible

# test highlights appropriately
#specific measure...
#test population highlights
#test variables highlight
#test aggregators
#test specific occurrence
#test bubble up (pull file from bubble up pull request)
end
