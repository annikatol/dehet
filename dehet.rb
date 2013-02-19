require "rubygems"
require "bundler/setup"
require "capybara"
require "capybara/dsl"
require "capybara-webkit"
Capybara.run_server = false
Capybara.current_driver = :webkit
Capybara.app_host = "http://vandale.nl"

puts ARGV.inspect
word = ARGV[0]
url = "/opzoeken?pattern=#{word}&lang=nn"
puts url