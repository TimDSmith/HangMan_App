require "figlet"
require "tty-prompt"
require 'colorize'
require_relative "main_game.rb"
require_relative "help_menu.rb"

class Main_menu
    system("clear")
    system "figlet -c HANGMAN"

    def menu_options
        # choices = %w[Start, Help!, Quit]
        prompt_two = TTY::Prompt.new
        # prompt_two.enum_select("Choose your fate", choices)
        @prompt_two_menu = [
            {"Start" => -> do main_game.rb end},
            {"Help!" => -> do help_menu end},
            {"Quit" => -> do puts "exit" end}
        ]
        prompt_two.enum_select("Choose your fate", @prompt_two_menu)
    end

   def help_menu
    system("clear")
    puts "hello"
   end


end

menu = Main_menu.new
menu.menu_options