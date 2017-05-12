--Date 03/16/2017
-- counter using taps
--Version 1.0

display.setStatusBar(display.HiddenStatusBar) --hides status bar
local w, h = display.contentWidth, display.contentHeight
bg = display.newRect( w/2, h/2, w, h )
bg:setFillColor(0,0,1)

local myText, changeText, counter
local go =display.newImage("go.png",w/4,h/4) --call button
local reset =display.newImage("reset.png",w/4+400,h/4) --call button
counter = 100

function changeText( event )
	counter = counter - 1
	myText.text = "I've been tapped " ..counter.." times."
	print( counter.." taps") -- to print in the console
	myText:setFillColor( math.random(), math.random(), math.random())
	return true
end
function resetCounter( event )
	counter = 100
	myText.text = "I've been tapped 0 times."
	myText:setFillColor( math.random(), math.random(), math.random())
	return true
end

myText = display.newText( "I've been tapped 0 times", display.contentCenterX, display.contentCenterY, Arial, 55)
	myText:setFillColor( 0, 1, 0)

myText:addEventListener( "tap", changeText)

go:addEventListener("tap", changeText) --the listener to invoke function on tap
reset:addEventListener("tap", resetCounter) --the listener to invoke function on tap
