require "date"
require "math"

VERSION = "1.0.1.0"


local write=io.write

write("Conway's Doomsday Training ", VERSION, "\n")
write("(c)2011 Wijayadi (wijayadi@sengsara.com)\n")


start_date = date(1800, 1, 1)
end_date = date(2100, 12, 31)

start_date = start_date:adddays(10)
local diff = date.diff(end_date, start_date)
local days = diff:spandays()
math.randomseed(os.time())
math.random()
math.random()
math.random()

days = math.random(days)
guess_date = start_date:adddays(days)

write("Date: ", tostring(guess_date), "\n")
write("What day is it?\n")
write("1. Mon 2. Tues 3. Wednes 4. Thurs 5. Fri 6.Satur 7.Sun\n")

correct = false

for i = 1, 10 do
	write("?")
	answer = io.read()

	if answer >= '1' and answer <= '7'	then
		if tonumber(answer) == guess_date:getweekday() then
			correct = true
			break
		else
			write("Nope\n")
		end
	end
end

if correct then
	write("You're correct!\n")
else
	write("You've lost!\n")
end
