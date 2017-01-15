os.loadAPI ("button")
m = peripheral.wrap ("top")
p = peripheral.wrap ("back")
m.clear ()

function fillTable ()
	button.setTable ("button1", peat, 3, 17, 1, 3)
	button.setTable ("button2", pumpkin, 3, 17, 5, 7)
	button.setTable ("button3", melon, 3, 17, 9, 11)
	button.setTable ("button4", netherwart, 3, 17, 13, 15)
	button.setTable ("button5", wheat1, 3, 17, 17, 19)
	button.setTable ("button6", wheat2, 23, 37, 1, 3)
	button.setTable ("button7", oak, 23, 37, 5, 7)
	button.setTable ("button8", birch, 23, 37, 9, 11)
	button.setTable ("button9", spruce, 23, 37, 13, 15)
	button.setTable ("button10", jungle, 23, 37, 17, 19)
	button.screen ()
end

function getClick ()
	event, side, x, y = os.pullEvent ("monitor_touch")
	button.checkxy (x, y)
end

function pulse ()
	redstone.setOutput ("back", true)
	sleep (0, 5)
	redstone.setOutput ("back", false)
end

function peat ()
	button.toggleButton ("button1")
	p.setFreq (151)
	pulse ()
end

function pumpkin ()
	button.toggleButton ("button2")
	p.setFreq (152)
	pulse ()
end

function melon ()
	button.toggleButton ("button3")
	p.setFreq (153)
	pulse ()
end

function netherwart ()
	button.toggleButton ("button4")
	p.setFreq (154)
	pulse ()
end

function wheat1 ()
	button.toggleButton ("button5")
	p.setFreq (155)
	pulse ()
end

function wheat2 ()
	button.toggleButton ("button6")
	p.setFreq (156)
	pulse ()
end

function oak ()
	button.toggleButton ("button7")
	p.setFreq (157)
	pulse ()
end

function birch ()
	button.toggleButton ("button8")
	p.setFreq (158)
	pulse ()
end

function spruce ()
	button.toggleButton ("button9")
	p.setFreq (159)
	pulse ()
end

function jungle ()
	button.toggleButton ("button10")
	p.setFreq (160)
	pulse ()
end

fillTable ()
while true do getClick () end
