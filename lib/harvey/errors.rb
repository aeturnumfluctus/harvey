# frozen_string_literal: true

module Harvey
  class Error < StandardError; end

  class EspeakExecutionError < Error
    def initialize(message, action)
      super("HARVEY DON'T LIKE THAT! (Invocation of `espeak` failed)")
    end
  end
end
