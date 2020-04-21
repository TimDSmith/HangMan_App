# require "artii"
require "figlet"
require "tty-prompt"
require 'colorize'


class Welcome_screen
    def welcome_one
        # a = Artii::Base.new
        system("clear")
        # puts a.asciify("HANGMAN")
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
        # a = Artii::Base.new
        system("clear")
        # puts a.asciify("HANGMAN")
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
end



welcome_screen = Welcome_screen.new
@welcome = welcome_screen.welcome_one
@welcome = welcome_screen.welcome_two