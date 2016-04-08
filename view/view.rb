require 'pry'
require 'colorize'
class View

  def title
  puts "                 [\\ ".colorize(:color => :yellow)
  puts "            .----' `-----. ".colorize(:color => :yellow)
  puts "           //^^^^;;^^^^^^`\\ "
  puts "   _______//_____||_____()_\\________ ".colorize(:color => :yellow)
  puts " /826    :      : ___              `\\ ".colorize(:color => :yellow)
  puts "|>   ____;      ;  |/\\><|   ____   _<) ".colorize(:color => :yellow)
  puts "{____/    \\_________________/    \\____} ".colorize(:color => :yellow)
  puts "     \\ '' /                 \\ '' /         ".colorize(:color => :yellow)
  puts "      '--'                   '--'         ".colorize(:color => :yellow)
  end

  def greet
   puts "Did you lose something in a cab?"
  end

  def goodbye
    puts "Ok, have an awesome day then!"
  end

  def ask
    puts "What information do you have from your ride? Try plate number, driver name, or license number."
  end

  def ask_for_clarification
    puts "Please enter 'plate', 'name', or 'license'."
  end

  def ask_for_information
    puts "Great, enter what you remember below."
  end

  def display_final_info(input)
    puts "Here's the information to contact that company:"
    puts "Company #{input.split(',')[7].scan(/:.*\z/).join}"
    puts "Phone number #{input.split(',')[3].scan(/:.*\z/).join}"
    puts "Driver name #{input.split(',')[4].scan(/:.*\z/).join}, #{input.split(',')[5]}"

    puts
  end

end
