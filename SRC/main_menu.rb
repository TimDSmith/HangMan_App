require "figlet"
require "tty-prompt"
require "colorize"
# require_relative "main_game"

class Main_menu

        def welcome_one
            system("clear")
            system "figlet -c HANGMAN"
            puts "          ```````````````````````````````````````````````````````````"     
            puts "                                 __________
                                     |/      |
                                     |      (_)
                                     |      \\|/
                                     |       |
                                     |      / \\
                                     |
                                    _|___"
            prompt_one = TTY::Prompt.new
            prompt_one.keypress("\n----------------------- PRESS ANY KEY TO " + "HANG".colorize(:red) + " THE MAN --------------------------\n")
        end
    
        def welcome_two
            system("clear")
            system "figlet -c HANGMAN"
            puts "          ```````````````````````````````````````````````````````````"     
            puts "                                 __________
                                     |/      |
                                     |       |
                                     |      (_)
                                     |      \\|/
                                     |       |
                                     |      / \\
                                    _|___"
            prompt_one = TTY::Prompt.new
            prompt_one.keypress("\n----------------------- PRESS ANY KEY TO " + "CONTINUE".colorize(:blue) + "-------------------------------\n")
        end

    def menu_options
        system("clear")
        system "figlet -c HANGMAN"
        # choices = %w[Start, Help!, Quit]
        prompt_options = TTY::Prompt.new
        # prompt_two.enum_select("Choose your fate", choices)
        @prompt_options_menu = [
            {"Start" => -> do main_game.rb end},
            {"Help!" => -> do help_menu end},
            {"Quit" => -> do puts "                __________
                |/      |
                |       |   ---UGH!
                |      (_)
                |      \\|/
                |       |
                |      / \\
               _|___" end}
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


end

welcome_screen = Main_menu.new
@welcome = welcome_screen.welcome_one
@welcome = welcome_screen.welcome_two
menu = Main_menu.new
@menu_options = menu.menu_options
