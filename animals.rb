animal_list = ["elephant"]
def ask_question(prompt)
  puts prompt
  gets.chomp.downcase
end

def ask_yes_no_question(prompt)
  answer = nil
  until answer
    temp = ask_question(prompt)
    if temp == 'y' || temp == 'n'
      answer = temp
    end
  end
  answer
end
animal_run = true
while animal_run == true do
  puts "Think of an animal..."
    answer = ask_yes_no_question("Is it an " + animal_list.sample + " (y or n)")
    if answer == "y"
      puts "Thanks."
      puts "Play again? (y or n)?"
        #answer = gets.chomp.downcase
    elsif answer == "n"
      puts "You win. Help me learn from my mistake before you go..."
      animal = ask_question("What were you thinking of?")
      animal_question =  ask_question "Ok, what is a question that I could ask about that animal?"
    end
end
