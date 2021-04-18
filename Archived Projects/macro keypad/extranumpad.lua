lmc_assign_keyboard('MACROS')

sendToAHK = function (key)
      --print('It was assigned string:    ' .. key)
      local file = io.open("C:\\Users\\mattl\\Documents\\GitHub\\2nd-keyboards\\keypressed.txt", "w") -- writing this string to a text file on disk is probably NOT the best method. Feel free to program something better!
      --Make sure to substitute the path that leads to your own "keypressed.txt" file, using the double backslashes.
	  --print("we are inside the text file")
      file:write(key)
      file:flush() --"flush" means "save"
      file:close()
      lmc_send_keys('{F24}')  -- This presses F24. Using the F24 key to trigger AutoHotKey is probably NOT the best method. Feel free to program something better!
end

local config = {
	--numbers
	[97]  = "1",
	[98]  = "2",
	[99]  = "3",
	[100] = "4",
	[101] = "5",
	[102] = "6",
	[103] = "7",
	[104] = "8",
	[105] = "9",
	[96]  = "0",
	--symbols
	[111] = "10",
	[106] = "11",
	[109] = "12",
	[107] = "13",
	[8]   = "14",
	[13]  = "15",
	[110] = "16",
	--numlock off numbers
	[35]  = "21",
	[40]  = "22",
	[34]  = "23",
	[37]  = "24",
	[12]  = "25",
	[39]  = "26",
	[36]  = "27",
	[38]  = "28",
	[33]  = "29",
	[45]  = "20",
	[46]  = "31",
}

lmc_set_handler('MACROS', function(button, direction)
	--Ignoring upstrokes ensures keystrokes are not registered twice, but activates faster than ignoring downstrokes. It also allows press and hold behaviour
        if (direction == 0) then return end -- ignore key upstrokes.
	if type(config[button]) == "string" then
                print(' ')
                print('Your key ID number is:   ' .. button)
				print('It was assigned string:    ' .. config[button])
				sendToAHK(config[button])
	else
                print(' ')
                print('Not yet assigned: ' .. button)
	end
end)
