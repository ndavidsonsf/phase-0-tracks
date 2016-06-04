=begin
Psuedocode

Airport
	-International
		- Cathay Pacific
			-A330-300
			-A340-300
			-A350-900
			-B777-300
			-B777-300ER
		- Singapore Airlines
			-A330-300
			-A380-800
			-B777-200ER
			-B777-300ER
		- Air France
			-A319-100
			-A320-200
			-A321-200
			-A380-800
		- Ethiad Airways
			-A340-600
			-A380-800
			-
	-Terminal 1
		-Southwest
		 -B737-700
		 -B737-800
		-Delta
		 -A320-200
		 -B747-400
		 -MD88
		 -A320-200
		-Frontier
			-A319-100
			-A320-200
			-A321-200
	-Terminal 2
		-American Airlines
			-B737-800
			-B777-200ER
			-MD82
			-B787-8
		-Virgin America
			-A319-100
			-A320-200
	-Terminal 3
		-United
			-B737-900ER
			-B747-400
			-B757-200
			-B777-200ER
			-B787-8
=end

airport = {
	international: {
		name: 'International',
		'Cathay Pacific' => ['A330-300', 'A340-300', 'A350-900', 'B777-300', 'B777-300ER'],
		'Singapore Airlines' => ['A330-300', 'A380-800', 'B777-200ER', 'B777-300ER'],
		'Air France' => ['A319-100', 'A320-200', 'A321-200', 'A380-800'],
		'Ethiad Airways' => ['A340-600', 'A380-800']
	},

	terminal_1: {
		name: 'Terminal 1',
		'Southwest Airlines' => ['B737-700', 'B737-800'],
		'Delta Air Lines' => ['A320-200', 'B747-400', 'MD-88'],
		'Frontier Airlines' => ['A319-100', 'A320-200', 'A321-200']
	},
	
	terminal_2: {
		name: 'Terminal 2',
		'American Airlines' => ['B737-800', 'B777-200ER', 'MD-82', 'B787-8'],
		'Virgin America' => ['A319-100', 'A320-200']
	},

	terminal_3: {
		name: 'Terminal 3',
		'United Airlines' => ['B737-900ER', 'B747-400', 'B757-200', 'B777-200ER', 'B787-8']
	}

}

p airport
puts
p airport[:terminal_3][:name]
p airport[:international]['Singapore Airlines'][2]
p airport[:terminal_3]['United Airlines'].last
p airport[:terminal_1]['Delta Air Lines']

