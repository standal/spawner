os.loadAPI("lib/touchpoint")
local listMenu = touchpoint.new("left")
local buttons = touchpoint.new("left")
local loading = touchpoint.new("left")
local t
local power = 0
rednet.open("right")
mon = pripheral.wrap("left")
eggs = peripheral.wrap("copper_0")
target = peripheral.wrap ("gold_0")
local slotnum = eggs.getInventorySize ()
local topline = paintutils.loadImage ("aLogo")
local col = 2
local row = 5
local curMob = 0