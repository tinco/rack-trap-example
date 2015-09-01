Signal.trap("TERM") do
    puts "Caught term"
    sleep 1
    exit
end

puts "I have PID #{Process.pid}"
puts "Sleeping"
sleep 20
