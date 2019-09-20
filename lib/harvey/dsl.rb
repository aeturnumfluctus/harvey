# frozen_string_literal: true

module Harvey
  module DSL
    def speak(msg, speed: nil, pitch: nil)
      speak_mod.call(msg, speed: speed, pitch: pitch)
      :ok
    end

    def with_speech(before: '', after: '', pitch: nil)
      speak(before, pitch: pitch)
      yield if block_given?
      speak(after, pitch: pitch)
    end

    def speak_mod
      if kernel == 'Linux'
        ESpeak
      elsif kernel == 'Darwin'
        Speak
      else
        raise <<-STRING
        Harvey no like #{kernel}. Harvey like ye Linux Macs
        STRING
      end
    end

    def kernel
      @kernel ||= `uname`.strip
    end
  end
end
