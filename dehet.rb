puts ARGV.inspect
word = ARGV[0]
url = "http://vandale.nl/opzoeken?pattern=#{word}&lang=nn"
puts url