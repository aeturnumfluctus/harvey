# frozen_string_literal: true

module Harvey
  module Speak
    def self.call(msg, _opts)
      `speak "#{msg}"`
    rescue StandardError
      raise EspeakExecutionError
    end
  end
end
