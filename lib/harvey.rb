# frozen_string_literal: true

require 'harvey/version'

# Harvey is dumb. Harvey says things.
module Harvey
  class Error < StandardError; end
  # Your code goes here...

  def self.harvey_speak(msg, speed: 100, pitch: 75)
    begin
      `espeak '#{msg}' -s #{speed} -p #{pitch}`
    rescue StandardError
      raise Error, 'Harvey no likey..'
    end

    :ok
  end

  def self.with_harvey(before: '', after: '', pitch: nil, &block)
    harvey_speak(before)
    block.call if block_given?
    harvey_speak(after)
  end
end
