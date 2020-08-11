# frozen_string_literal: true

require "with_present/version"
require 'with_present/railtie' if defined?(Rails)

require 'active_support/core_ext'

module WithPresent
  module Helpers
    def with_present(value)
      yield(value)&.html_safe if value.present?
    end

    def without_present(value)
      yield(value)&.html_safe unless value.present?
    end
  end
end
