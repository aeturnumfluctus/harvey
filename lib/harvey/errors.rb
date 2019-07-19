# frozen_string_literal: true

module Harvey
  class Error < StandardError; end

  class EspeakExecutionError < Error
    def initialize(msg)
      msg ||= "HARVEY DON'T LIKE THAT! (Invocation of `espeak` failed)"
      super(msg)
    end
  end
end
