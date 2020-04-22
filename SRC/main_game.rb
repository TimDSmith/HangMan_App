require "figlet"
require "tty-prompt"
require "colorize"
# require_relative "main_menu.rb"
# require_relative "questions.rb"
class Hangman
    
    def initialize
        @attempts_allowed = 5
        @attempts_left = nil    
    end

    

end


new_game = Hangman.new
# start_game = new_game.run_quiz(questions)