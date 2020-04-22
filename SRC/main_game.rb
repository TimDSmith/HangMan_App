require "figlet"
require "tty-prompt"
require "colorize"
require_relative "main_menu.rb"

puts "hello"
class Hangman
    attr_accessor :correct_answers, :wrong_answers, :wrong_questions
    def initialize
        @correct_answers = []
        @wrong_answers = []
        @wrong_questions = []
        @attempts_left = @attemps_allowed
    end

    def questions
        puts "hello"
    end
end


new_game = Hangman.new
start_game = new_game.questions