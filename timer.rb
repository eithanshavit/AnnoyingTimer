# This annoying timer beep every x minutes. It is also quietly counting minutes.
# Timer will beep at the end of each interval. Beeping number of times to match current number of interval.

defaultMins = 5 #Default value of minutes of for invalid input or ease of use.
print "\n<<<The Very Annoying Timer>>>\n\nBeep every how many minutes? (Default is #{defaultMins} mins) : "
BeepEveryMin = (temp = gets.chomp.to_i) > 0 ? temp : defaultMins #get interval from user or set default
puts "\nBeeping every #{BeepEveryMin} minutes"
puts
segments = 1
minutes = 0
while (1) do #never quit, just close window
	
	BeepEveryMin.times do #count minutes
		print "\rElapsed: #{minutes}"
		sleep 60
		minutes += 1
		
	end
	segments.times do #beep number of time according to current interval.
		print "\a"
		sleep 0.001
	end
	segments += 1
end