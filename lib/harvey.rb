require "harvey/version"

# Harvey is dumb. Harvey says things.
module Harvey
  class Error < StandardError; end
  # Your code goes here...

  def self.harvey_speak(msg)
    `espeak '#{msg}'`
  end

  def self.with_harvey(before: "", after: "", &block)
    harvey_speak(before)
    block.call if block_given?
    harvey_speak(after)
  end
end
