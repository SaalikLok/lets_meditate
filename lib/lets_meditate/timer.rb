require "colorize"

class Timer
  def initialize(mins_to_meditate)
    @seconds = mins_to_meditate * 60
  end

  def countdown
   pre_meditation
   puts "Meditation in progress...".colorize(:light_green)
   sleep @seconds
   puts "Welcome back."
  end

  private

  def pre_meditation
    puts "Take a deep breath, inhale and exhale."
    puts "Close your eyes."
    puts
    sleep 5
  end
end
