def options_list
  options = {
    1 => 'List All Books',
    2 => 'List All Music Albums',
    3 => 'List All Games',
    4 => 'List All Geners',
    5 => 'List All Labels',
    6 => 'List All Authors',
    7 => 'Add A Book',
    8 => 'Add A Music Album',
    9 => 'Add A Game',
    0 => 'Exit'
  }

  options.each { |key, option| puts "#{key} - #{option}" }
  gets.chomp
end

def main
  puts 'Welcome to Catalog of my things!'
  number = options_list

  loop do
    case number
    when '0'
      puts 'Thank you for using this app Goodbye!'
      exit
    else
      puts 'Invalid input'
      break
    end
  end
end

main
