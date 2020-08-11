# frozen_string_literal: true

require "test_helper"

class HelperTest < Minitest::Test
  include WithPresent::Helpers

  def test_nil_value_returns_nil
    assert_nil with_present(nil) { |_v| 'foo' }
  end

  def test_present_value_yields_value
    assert_equal with_present('foo') { |v| "Yielded #{v}" }, 'Yielded foo'
  end
end
