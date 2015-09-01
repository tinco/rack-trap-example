app = proc do |env|
    puts "Sleeping..."
    sleep 20
    [ 200, {'Content-Type' => 'text/plain'}, ["Slept.."] ]
end

Signal.trap("INT") {
    puts "Caught ctrl+c"
    shut_down
}
Signal.trap("TERM") {
    puts "Caught SIGTERM"
    shut_down
}

def shut_down
    puts "Ruby process is shutdown gracefully.."
    sleep 1
    exit
end

run app
