require "figlet"
require "tty-prompt"
require "colorize"
require_relative "main_menu"

class Hangman
    attr_accessor :correct_answers, :wrong_answers, :wrong_questions
    def initialize
        @correct_answers = []
        @wrong_answers = []
        @wrong_questions = []
        @attempts_left = @attemps_allowed
    end

    def 

    end
end


new_game = Hangman.new