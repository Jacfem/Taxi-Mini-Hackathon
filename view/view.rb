require 'pry'
require 'colorize'
class View

  def title
  puts
  puts
  puts "          FIND MY CAB SWAG                          ".colorize(:color => :red)
  puts
  puts
  puts "                 [\\ ".colorize(:color => :yellow)
  puts "            .----' `-----. ".colorize(:color => :yellow)
  puts "           //^^^^;;^^^^^^`\\ "
  puts "   _______//_____||_____()_\\________ ".colorize(:color => :yellow)
  puts " /826    :      : ___              `\\ ".colorize(:color => :yellow)
  puts "|>   ____;      ;  |/\\><|   ____   _<) ".colorize(:color => :yellow)
  puts "{____/    \\_________________/    \\____} ".colorize(:color => :yellow)
  puts "     \\ '' /                 \\ '' /         ".colorize(:color => :yellow)
  puts "      '--'                   '--'         ".colorize(:color => :yellow)
  puts
  end

  def greet
  puts
   puts "Did you lose something in a cab?"
  end

  def goodbye
    puts
    puts "Ok, have an awesome day then!"
  end

  def ask
    puts
    puts "What information do you have from your ride? Try plate number, driver name, or license number."
  end

  def ask_for_clarification
    puts
    puts "Please enter 'plate', 'name', or 'license'."
  end

  def ask_for_information
    puts
    puts "Great, enter what you remember below."
  end

  def display_final_info(input)
    puts
    puts "Here's the information to contact that company:"
    puts "Company #{input.split(',')[7].scan(/:.*\z/).join}"
    puts "Phone number #{input.split(',')[3].scan(/:.*\z/).join}"
    puts "Driver name #{input.split(',')[4].scan(/:.*\z/).join}, #{input.split(',')[5]}"
  end

end
