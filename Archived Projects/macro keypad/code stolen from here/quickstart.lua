-- assign logical name to macro keyboard
lmc_assign_keyboard('MACROS')

-- define callback for whole device
lmc_set_handler('MACROS',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  --if     (button == 99) then lmc_send_keys("snippingtool")
  --elseif (button == 98) then lmc_spawn("cmd")
  if (button == 1) then lmc_print_devices()
  else print('Not yet assigned: ' .. button) 
  end
end)
