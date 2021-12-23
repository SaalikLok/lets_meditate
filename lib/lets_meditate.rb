require "lets_meditate/timer"

class LetsMeditate
  def initialize
    @minutes = 0
  end

  def self.start
    welcome_message
    trigger_timer
    exit_session
  end
  
  private

  def self.welcome_message
    puts "Welcome! It's time to meditate."
    puts
    puts "How many minutes would you like to sit in silence?"
    @minutes = gets.chomp.to_f
  end
  
  def self.trigger_timer
    puts
    puts "Take a deep breath, inhale and exhale."
    puts "Press enter when you are ready to begin."
    puts
    gets.chomp
    timer = Timer.new(@minutes)
    timer.countdown
  end
  
  def self.exit_session
    puts "Press any key to end your session."
    gets.chomp
    exit(true)
  end
  
end
