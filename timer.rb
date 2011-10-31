print "\n    <<<The Very Annoying Timer>>>\n\nBeep every how many minutes? (Default is 5 mins) : "
BeepEveryMin = (temp = gets.chomp.to_i) > 0 ? temp : 5
puts "\nBeeping every #{BeepEveryMin} minutes"
puts
segments = 1
minutes = 0
while (1) do
	
	BeepEveryMin.times do
		print "\rElapsed: #{minutes}"
		sleep 60
		minutes += 1
		
	end
	segments.times do
		print "\a"
		sleep 0.001
	end
	segments += 1
end