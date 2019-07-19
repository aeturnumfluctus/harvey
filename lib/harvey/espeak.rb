# frozen_string_literal: true

module Harvey
  module ESpeak
    DEFAULTS = { amplitude: 100, pitch: 50, speed: 175, voice: 'en' }

    def self.call(msg, **opts)
      espeak_opts = parse_espeak_opts(opts).map(&to_espeak_opt_str).join(' ')

      `espeak "#{msg}" #{espeak_opts}`
    rescue StandardError
      raise EspeakExecutionError
    end

    def self.parse_espeak_opts(opts)
      {
        a: (opts.fetch(:amplitude, nil) || default_amplitude),
        p: (opts.fetch(:pitch, nil) || default_pitch),
        s: (opts.fetch(:speed, nil) || default_speed),
        v: (opts.fetch(:voice, nil) || default_voice)
      }
    end

    def self.to_espeak_opt_str
      ->(flag, value) { "-#{flag} #{value}" }
    end

    def self.default_amplitude
      DEFAULTS[:amplitude]
    end

    def self.default_pitch
      DEFAULTS[:pitch]
    end

    def self.default_speed
      DEFAULTS[:speed]
    end

    def self.default_voice
      DEFAULTS[:voice]
    end
  end
end
