os.loadAPI("lib/touchpoint")
local listMenu = touchpoint.new("left")
local buttons = touchpoint.new("left")
local loading = touchpoint.new("left")
local t
local power = 0
rednet.open("right")
mon = peripheral.wrap("left")
eggs = peripheral.wrap("copper_0")
target = peripheral.wrap ("gold_0")
local slotnum = eggs.getInventorySize()
local topline = paintutils.loadImage ("lib/aLogo")
local col = 2
local row = 5
local curMob = 0


function listPage()
	reloadMobs()
	t = listMenu
end

function loadingPage()
	t = loading
end

function moveMob(i, mobName)

	loadingPage()
	print("Moving mob:  ".. i .." "..mobName)
	curMob = mobName
	eggs.pushItem("north", i, 1, 1)
	reloadMobs()
end

function spawnExact()
	rs.setOutput("top", false)
	sleep(1)
	rednet.send(43, "switchState")
	sleep(5)
-- rednet.send(43, "switchState")
	sleep(1)
-- rs.setOutput("top", false)
end

function callButton(name)
	if type(t.buttonList[name].func) == "function" then
		t.buttonList[name].func()
	end
end

function reloadMobs()
	t = loading
	local row = 5
	local col = 2
	sleep(1.5)
	listMenu = touchpoint.new("left")
	listMenu:add("Current Mob:  "..curMob, nil, 2, 2, 3, 2, 128, 128)
	listMenu:add("Spawn Exact", spawnExact, 35,2, 50, 2, 128, 128)
	for i=1,slotnum do
		local tableInfo = eggs.getStackInSlot(i)

		if tableInfo ~= nil then
			for key, value in pairs(tableInfo) do
				if key == "captured" then
					print(value .. " i = " .. i)
					print(row)
					listMenu:add(value, function() moveMob(i, value, function())
						row = row + 2
					end
				end
		else
	end

end
		t= listMenu


	loading:add("Loading...", nil,1,2,40,5,colors.gray, colors.gray)

	listPage()

	while true do
		t:draw()
			local event, p1 = t:handleEvents(os.pullEvent())
			if event == "button_click" then
			t:flash(p1)
			t.buttonList[p1].func()
			end
		end





