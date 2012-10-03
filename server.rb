require "sinatra"
require "json"

post "/geo" do
  puts "Posted: #{params}"
  open("data.out", "a") do |file|
    file.puts(params.to_json)
  end
  "Success"
end

def parseLog
  open("data.out", "r") do |file|
    @contents = file.read
  end
  JSON.parse "[#{@contents.gsub("}}}", "}}},")[0..-3]}]"
end