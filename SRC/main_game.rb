require "figlet"
require "tty-prompt"
require "colorize"
# require_relative "main_menu.rb"
require_relative "questions.rb"
class Hangman < Questions
    
    def initialize
        @attempts_allowed = 7
        @attempts_left = nil    
    end

    def setup
        @attempts_left = @attempts_allowed

    end

    def ascii file_name
        ascii_img_path = File.join(File.dirname(__FILE__), '..', 'ascii_art', file_name)
        img = File.read(ascii_img_path)
    end

    def run_quiz(question_list)
        system("clear")
        answer = ""
        score = 0
        for question in question_list
             puts question.prompt
             answer = gets.chomp()
             if answer == question.answer
                  score += 1
             else answer != question.answer
                  puts ascii "#{@attempts_left}_lives_left.txt"
             end
        end
        system ("clear")
        puts "You got #{score} answers out of #{question_list.length()} questions correct!"
        prompt_three = TTY::Prompt.new
        prompt_three.keypress("\n----------------------- PRESS ANY KEY TO " + "CONTINUE".colorize(:green) + "-------------------------------\n")
        menu = Main_menu.new
        @menu_options = menu.menu_options
   end
   
   run_quiz(question_list)
    

end


new_game = Hangman.new
# start_game = new_game.run_quiz(questions)