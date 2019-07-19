# frozen_string_literal: true

require 'harvey/version'

require 'harvey/dsl'
require 'harvey/espeak'
require 'harvey/errors'

# Harvey is dumb. Harvey says things.
module Harvey
  extend Harvey::DSL

  def self.included(other)
    other.extend Harvey::DSL
  end
end
