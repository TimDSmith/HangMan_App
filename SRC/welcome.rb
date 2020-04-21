# require "artii"
require "figlet"
require "tty-prompt"


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
        prompt_one.keypress("\n----------------------- PRESS ANY KEY TO HANG THE MAN --------------------------\n")
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
        prompt_one.keypress("\n----------------------- PRESS ANY KEY TO CONTINUE --------------------------\n")
    end
end



welcome_screen = Welcome_screen.new
@welcome = welcome_screen.welcome_one
@welcome = welcome_screen.welcome_two