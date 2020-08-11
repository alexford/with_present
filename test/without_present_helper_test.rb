# frozen_string_literal: true

require "test_helper"

class WithoutPresentHelperTest < Minitest::Test
  include WithPresent::Helpers

  def test_nil_value_yields_value
    assert_equal without_present(nil) { |v| "Yielded #{v}" }, 'Yielded '
  end

  def test_nil_value_yields_value_without_arg
    assert_equal without_present(nil) { "Yielded" }, 'Yielded'
  end

  def test_present_value_returns_nil
    assert_nil without_present('foo') { |v| "Yielded #{v}" }
  end
end
