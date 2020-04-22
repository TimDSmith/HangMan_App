require "figlet"
require "tty-prompt"
require "colorize"
require_relative "main_menu.rb"

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

    def questions_file file_name
        questions_path = File.join(File.dirname(__FILE__), 'questions.txt', file_name)
        questions = File.read(questions_path)
      end
end


new_game = Hangman.new
start_game = new_game.questions