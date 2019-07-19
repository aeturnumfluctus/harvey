# frozen_string_literal: true

module Harvey
  module DSL
    def speak(msg, speed: nil, pitch: nil)
      ESpeak.call(msg, speed: speed, pitch: pitch)
      :ok
    end

    def with_speech(before: '', after: '', pitch: nil)
      speak(before)
      yield if block_given?
      speak(after)
    end
  end
end
