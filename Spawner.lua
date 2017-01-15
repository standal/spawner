os.loadAPI ("lib/button")
m = peripheral.wrap ("top")
m.clear ()

function fillTable ()
	button.setTable ("button1", button1, 3, 17, 1, 3)
	button.setTable ("button2", button2, 3, 17, 5, 7)
	button.setTable ("button3", button3, 3, 17, 9, 11)
	button.setTable ("button4", button4, 3, 17, 13, 15)
	button.setTable ("button5", button5, 3, 17, 17, 19)
	button.setTable ("button6", button6, 23, 37, 1, 3)
	button.setTable ("button7", button7, 23, 37, 5, 7)
	button.setTable ("button8", button8, 23, 37, 9, 11)
	button.setTable ("button9", button9, 23, 37, 13, 15)
	button.setTable ("button10", button10, 23, 37, 17, 19)
	button.screen ()
end

function getClick ()
	event, side, x, y = os.pullEvent ("monitor_touch")
	button.checkxy (x, y)
end

function pulse1 ()
	rs.setAnalogOutput ("back", 1)
	sleep (3)
	rs.setAnalogOutput ("back", 0)
end

function button1 ()
	button.toggleButton ("button1")
	rs.setAnalogOutput ("back", 1)
	pulse1 ()
end

function pulse2 ()
	rs.setAnalogOutput ("back", 2)
	sleep (3)
	rs.setAnalogOutput ("back", 0)
end

function button2 ()
	button.toggleButton ("button2")
	rs.setAnalogOutput ("back", 2)
	pulse2 ()
end

function button3 ()
	button.toggleButton ("button3")
	rs.setAnalogOutput ("back", 3)
	pulse ()
end

function button4 ()
	button.toggleButton ("button4")
	rs.setAnalogOutput ("back", 4)
	pulse ()
end

function button5 ()
	button.toggleButton ("button5")
	rs.setAnalogOutput ("back", 5)
	pulse ()
end

function button6 ()
	button.toggleButton ("button6")
	rs.setAnalogOutput ("back", 6)
	pulse ()
end

function button7 ()
	button.toggleButton ("button7")
	rs.setAnalogOutput ("back", 7)
	pulse ()
end

function button8 ()
	button.toggleButton ("button8")
	rs.setAnalogOutput ("back", 8)
	pulse ()
end

function button9 ()
	button.toggleButton ("button9")
	rs.setAnalogOutput ("back", 9)
	pulse ()
end

function button10 ()
	button.toggleButton ("button10")
	rs.setAnalogOutput ("back", 10)
	pulse ()
end

fillTable ()
while true do getClick () end
