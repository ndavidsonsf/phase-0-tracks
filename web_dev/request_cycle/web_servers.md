1. Key Design Philosophies of Linux OS
	1. Small is Beautiful
		- and -
	2. Each Program Does One Thing Well
		- these two go hand in hand, each command does something incredibly well and it short, so it runs FAST
	3. Prototype as Soon as Possible
	4. Choose Portability over Efficiency
	5. Store Data in Flat Text Files
	6. Use Software Leverage
		- the example uses four commands, this means we are leveraging the work of the programmers who created the commands
		- good programmers write good code, great programmers borrow good code, never rewrite
	7. Use Shell Scripts to Increase Leverage and Portability
		- can be far more efficient in the long run compared to a compiled language because they can run on many otherwise incompatible systems
	8. Avoid Captive User Interfaces
	9. Make Every Program a Filter
		- who | awk '{print $1}' | sort | uniq
			- command line program that lists all users who are currently logged in while only listing each logged in user once.
		- Standard Input and Standard Output or "STDIO"
2. A VPS, or virtual private server is another name for a virtual machine or web server.  It is a chunk of memory that is completely independent, runs it's own operating systems and can complete any number of tasks.  For example, as we saw today, a web server.

3. There are a ton of reasons why you don't want log in as root on a Linux system.  As described by Ask Ubuntu:
	- more prone to mistakes and software bugs
	- most commonly accidentally deleting files
	- vulnerability or malicious software can cause more harm
	- victim of your own stupidity "rm - rf"
	- why have access to whole machine just to add a file to your user home directory
