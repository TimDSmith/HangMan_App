require "figlet"
require "tty-prompt"

require_relative "main_menu.rb"

class Question < Main_menu
     attr_accessor :prompt, :answer
     def initialize(prompt, answer)
          @prompt = prompt
          @answer = answer
     end

    
end

def question_list
     question_one = "1. What's one way we can install the colorize gem through terminal?\n(1) add colorize\n(2) install gem colorize\n(3) gem install colorize"
     question_two = "2. After installing, how can we use this gem in our app?\n(1) require 'colorize'\n(2) add 'colorize'\n(3) require_relative 'colorize"
     question_three = "3. How would  I import the Dog.rb file into my Index.rb?\n(1) require_relative ‘./Dog’\n(2) require_relative ‘./classes/Dog’\n(3) Require ‘./Dog’"
     question_four = "4. In terminal, how do I view all gems I have installed?\n(1) list gems\n(2) show gems\n(3) gem list"
     question_five = "5. What will the following display to the screen?\n(1) true\n(2) 0.45\n(3) “Michael”"
     question_six = "6. What will the following display to the screen?\n(1) It will display an error\n(2) “low-fat milk”\n(3) “soy”"
     question_seven = "7. coder = {teacher: “Garret”, dev: “Ragan”}; How would I display the value “Garret”?\n(1) p coder[:teacher]\n(2) p coder[:dev]\n(3) p coder[“Garret”] "
     question_eight = "8. What will be the last thing printed to the screen?\n(1) It will be an infinite loop\n(2) “I’ve been printed 9 times”\n(3) I’ve been printed 10 times”"
     question_nine = "9. What will the following display to the screen?\n(1) “Very Good” \n(2) “Cheap”\n(3) Nothing"
     question_ten = "10. What will the following display to the screen?\n(1) “Boo”\n(2) “WoohooBoo” \n(3) “Woohoo”"

     
     questions = [
          Question.new(question_one, "3"),
          Question.new(question_two, "1"),
          Question.new(question_three, "2"),
          Question.new(question_four, "3"),
          Question.new(question_five, "1"),
          Question.new(question_six, "3"),
          Question.new(question_seven, "1"),
          Question.new(question_eight, "2"),
          Question.new(question_nine, "1"),
          Question.new(question_ten, "3")
     ]
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