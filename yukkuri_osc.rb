require 'osc-ruby'
require 'osc-ruby/em_server'

ATALKPY = "/home/pi/aquestalkpi/AquesTalkPi"

server = OSC::EMServer.new(3333)

server.add_method '/greeting' do |message|
  puts "Address: #{message.address} --  Message: #{message.to_a}"
end

# にゃーんと鳴く
server.add_method '/nya' do |message|
  `#{ATALKPY} にゃーん | aplay`
end

server.run
