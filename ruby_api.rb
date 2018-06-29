require 'pry'
require 'httparty'

def get
  response = HTTParty.get("http://json-server.devpointlabs.com/api/v1/users")
  puts JSON.parse{response.to_s}
  response.each do |r|
  end


def menu
  puts "Here are your options: "
  puts "1: Get Users"
  puts "Enter your selection here: "
  @answer = gets.strip.to_i
    case @answer
      when 1
       get
      end
end

menu

