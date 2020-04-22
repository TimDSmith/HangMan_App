require "figlet"
require "tty-prompt"
require "colorize"
require_relative "main_menu.rb"
require_relative "questions.rb"
class Hangman
    
    def initialize
        
    end

    def questions
        puts "hello"
    end

    def run_quiz(questions)
        answer = ""
        score = 0
        for question in questions
             puts question.prompt
             answer = gets.chomp()
             if answer == question.answer
                  score += 1
             end
        end
        puts "you got #{score} out of #{questions.length()}"
   end
end


new_game = Hangman.new
start_game = new_game.questions