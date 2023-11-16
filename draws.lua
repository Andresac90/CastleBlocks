--draws--

function draw_menu()
	cls()
	print("press ❎ to start", 30, 60)
end

function draw_game()
	cls()
	map(0,0)
	spr(player.sp,player.x+adder,player.y,1,1,player.flpx)

	--HUD--
	--Blocksleft--
	spr(102,blocksleftx1+adder,116)
	print("X"..block1left,blocksleftx2+adder,117,7)
	spr(104,blocksleftx3+adder,116)
	print("X"..block2left,blocksleftx4+adder,117,7)
	--Controls--
	print("⬆️",54+adder,114,7)
	print("change block",64+adder,114,7)
	print("⬇️",54+adder,121,7)
	print("try again",64+adder,121,7)

	if changed == false then
		rect(2+adder,115,21+adder,124,8)
	elseif changed then
		rect(22+adder,115,39+adder,124,8)
	end

	--[[
	--debug rectangle--
	rect(x1r,y1r,x2r,y2r,7)
	print("⬅️= "..collide_l,player.x,player.y-10)
	print("➡️= "..collide_r,player.x,player.y-16)
	print("⬆️= "..collide_u,player.x,player.y-22)
	print("⬇️= "..collide_d,player.x,player.y-28)
	-----------------------
	--debug varaiables--
	print("dx= "..player.dx,player.x-45,player.y-10)
	print("dy= "..player.dy,player.x-45,player.y-16)
	--]]
	--rect(0,0,0,0,7)

	--Blocks--
	putblocks()
	if buttonplatform and mget(block.x/8,block.y/8) == 0 then

		if block.sp==102 and block1left>0 then
			blocks[blocki] = block
			blocki += 1
			mset(block.x/8,block.y/8,block.sp)
			buttonplatform = false
		end
		if block.sp==104 and block2left>0 then
			blocks[blocki] = block
			blocki += 1
			mset(block.x/8,block.y/8,block.sp)
			buttonplatform = false
		else
			buttonplatform = false
		end
		
		if block.sp==102 and block1left>0 then
			block1left -= 1
		elseif block.sp==104 and block2left>0 then
			block2left -= 1
		end
	end		
	
	--reset level--
	if reset then
		cls()
		reload(0x1000, 0x1000, 0x2000)
		player.x=respawn_x
		player.y=respawn_y
		block1left=block1leftlevel
		block2left=block2leftlevel
		reset = false	
	end
	
end