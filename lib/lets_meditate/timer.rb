require "pry"

class Timer
  def initialize(mins_to_meditate)
    @seconds = mins_to_meditate * 60
  end

  def countdown
    time = Time.now
    puts "Meditation in progress..."
    sleep @seconds
    puts "Welcome back."
    play_sound
  end

  private

  def play_sound
    puts `afplay 'lib/audio/end_session.wav'`
  end
end
