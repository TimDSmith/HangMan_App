require "figlet"
require "tty-prompt"
require "colorize"
# require_relative "main_game.rb"
# require_relative "questions.rb"

class Main_menu
    def welcome_one
        system("clear")
        system "figlet -c HANGMAN"
        puts "          ```````````````````````````````````````````````````````````"     
        puts "                                __________
                                |/      |
                                |      (_)
                                |      \\|/
                                |       |
                                |      / \\
                                |
                               _|___"
        prompt_one = TTY::Prompt.new
        prompt_one.keypress("\n----------------------- PRESS ANY KEY TO " + "HANG".colorize(:red) + " THE MAN --------------------------\n")
    
        system("clear")
        system "figlet -c HANGMAN"
        puts "          ```````````````````````````````````````````````````````````"     
        puts "                                __________
                                |/      |
                                |       |
                                |      (_)
                                |      \\|/
                                |       |
                                |      / \\
                               _|___"
        prompt_one = TTY::Prompt.new
        prompt_one.keypress("\n----------------------- PRESS ANY KEY TO " + "CONTINUE".colorize(:green) + "-------------------------------\n")
    end  


    def menu_options
        system("clear")
        system "figlet -c HANGMAN"
        # choices = %w[Start, Help!, Quit]
        prompt_options = TTY::Prompt.new
        # prompt_two.enum_select("Choose your fate", choices)
        @prompt_options_menu = [
            {"Start".colorize(:green) => -> do @start_game end},
            {"Help!".colorize(:blue) => -> do help_menu end},
            {"Quit".colorize(:red) => -> do quit_game end}
        ]
        prompt_options.enum_select("Choose your fate", @prompt_options_menu)
    end

   def help_menu
    system("clear")
    puts "hello"
    prompt_help = TTY::Prompt.new
    prompt_help.keypress("\n----------------------- PRESS ANY KEY TO " + "CONTINUE".colorize(:blue) + "-------------------------------\n")
    menu_options
    system("clear")
   end

   def quit_game
    puts "                __________
                |/      |
                |       |   ---UGH!
                |      (_)
                |      \\|/
                |       |
                |      / \\
               _|___"
    puts "\nYou can't escape the " + "HANGMAN".colorize(:red)
        exit
   end
end


menu = Main_menu.new
@intro = menu.welcome_one
@menu_options = menu.menu_options
# @start_game = new_game.questions

