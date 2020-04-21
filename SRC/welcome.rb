# require "artii"
require "figlet"
require "tty-prompt"

class Welcome_screen
    def welcome
        # a = Artii::Base.new
        system("clear")
        # puts a.asciify("HANGMAN") 
        system "figlet -c HANGMAN "
        prompt1 = TTY::Prompt.new
        prompt1.keypress("----------------------- PRESS ANY KEY TO HANGMAN --------------------------\n")
    end

end



welcome_screen = Welcome_screen.new
@welcome = welcome_screen.welcome