require "colorize"
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

  private_class_method

  def self.welcome_message
    puts `clear`
    puts "Welcome! It's time to meditate."
    puts
    puts "How many minutes would you like to sit in silence?".colorize(:light_cyan)
    @minutes = gets.chomp.to_f
  end

  def self.trigger_timer
    puts
    puts "Press enter when you are ready to begin your meditation.".colorize(:light_cyan)
    gets.chomp
    timer = Timer.new(@minutes)
    timer.countdown
  end

  def self.exit_session
    puts "Press any key to end your session.".colorize(:light_cyan)
    gets.chomp
    exit(true)
  end
end
