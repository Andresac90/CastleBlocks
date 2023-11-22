--level manager--
function levelmanager()
	if level == 1 then
		adder=0
		block1leftlevel = 0
		block2leftlevel = 0
		keyrequired=false
		camera(0,0)
	elseif level == 2 then
		adder = 128
		block1leftlevel = 1
		block2leftlevel = 0
		keyrequired=false
		camera(adder,0)
	elseif level == 3 then
		adder = 256
		block1leftlevel = 0
		block2leftlevel = 1
		keyrequired=false
		camera(adder,0)
	elseif level == 4 then
		adder = 384
		block1leftlevel = 1
		block2leftlevel = 1
		keyrequired=true
		key.x = 48
		key.y = 6
		camera(adder,0)
	elseif level == 5 then
		adder = 512
		block1leftlevel = 1
		block2leftlevel = 1
		keyrequired=true
		key.x = 68
		key.y = 1
		camera(adder,0)
	elseif level == 6 then
		adder = 640
		block1leftlevel = 2
		block2leftlevel = 0
		keyrequired=true
		key.x = 80
		key.y = 0
		camera(adder,0)
	elseif level == 7 then
		adder = 768
		block1leftlevel = 1 
		block2leftlevel = 1
		keyrequired=true
		key.x = 110
		key.y = 11
		camera(adder,0)
	elseif level == 8 then
		camera(0,0)
		init_ending()
	end
end