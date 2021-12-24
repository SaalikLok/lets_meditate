require "colorize"

class Timer
  def initialize(mins_to_meditate)
    @seconds = mins_to_meditate * 60
  end

  def countdown
    time = Time.now
    puts "Take a deep breath, inhale and exhale."
    puts "Close your eyes."
    puts
    sleep 5
    puts "Meditation in progress...".colorize(:light_green)
    sleep @seconds
    puts "Welcome back."
    play_sound
  end

  private

  def play_sound
    puts `afplay 'lib/audio/end_session.wav'`
  end
end
