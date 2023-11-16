--level manager--
function levelmanager()
	if level == 1 then
		adder=0
		block1leftlevel = 2
		block2leftlevel = 1
		camera(0,0)
	elseif level == 2 then
		adder = 128
		block1leftlevel = 1
		block2leftlevel = 2
		camera(adder,0)
	elseif level == 3 then
		adder = 256
		block1leftlevel = 3
		block2leftlevel = 1
		camera(adder,0)
	end
end