puts 'Welcome on the War Robots'

@teamGreen = Array.new(10,1)
@teamRed = Array.new(10,1)


def shot(item)
  sh = rand(0..9)
  if(item == 1)
    @teamRed[sh] = 0
  else
    @teamGreen[sh] = 0
  end
end

def check_team
  indicatorRed = 0
  indicatorGreen = 0
  @teamRed.each do |item|
    if item == 1
      indicatorRed = 1
    end
  end

  @teamGreen.each do |item|
    if item == 1
      indicatorGreen  = 1
    end
  end

  if indicatorRed == 0
    puts 'Robots of Green Team is win'
    exit
  elsif indicatorGreen == 0
    puts 'Robots of Red Team is win'
    exit
  end
end

x = 0
loop do 
  x = x + 1
  shot(x%2)
  check_team
end