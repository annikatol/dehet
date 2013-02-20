require "rubygems"
require "bundler/setup"
require "capybara"
require "capybara/dsl"
require "capybara-webkit"
require "nokogiri"
require "restclient"

# Capybara.run_server = false
# Capybara.current_driver = :webkit
# Capybara.app_host = "http://vandale.nl/"

# include Capybara::DSL

word = ARGV[0]
# url = "/opzoeken?pattern=#{word}&lang=nn"
# puts url
# visit url
# within '#content-area' do
# 	puts find('.fq').inspect
# end

page = Nokogiri::HTML(RestClient.get("http://vandale.nl/opzoeken?pattern=#{word}&lang=nn"))   
html = page.xpath('//*[@id="content-area"]/span[1]/span').to_s
if html.scan '>de<' 
	puts 'de'
elsif html.scan '>het<' 
	puts 'het'
else
	puts 'unknown'
end




