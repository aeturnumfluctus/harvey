# frozen_string_literal: true

module Harvey
  module Speak
    def self.call(msg, _opts)
      `say "#{msg}"`
    rescue StandardError
      raise EspeakExecutionError
    end
  end
end
