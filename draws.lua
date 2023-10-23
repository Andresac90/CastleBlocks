--draws--

function draw_menu()
	cls()
	print("press ❎ to start", 30, 60)
end

function draw_game()
	cls()
	map(0,0)
	spr(player.sp,player.x,player.y,1,1,player.flpx)
	--HUD--
	spr(102,3,116)
	print("X"..block1left,13,117)
	spr(104,23,116)
	print("X"..block2left,32,117)

	print("⬆️",54,114)
	print("change block",64,114)
	print("⬇️",54,121)
	print("try again",64,121)

	rect(2,115,21,124)
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

	putblocks()
	if buttonplatform and mget(block.x/8,block.y/8) == 0 then

		if block.sp==102 and block1left>0 then
			mset(block.x/8,block.y/8,block.sp)
			buttonplatform = false
		end
		if block.sp==104 and block2left>0 then
			mset(block.x/8,block.y/8,block.sp)
			buttonplatform = false
		else
			buttonplatform = false
		end
		
		if block.sp==102 and block1left>0 then
			block1left-=1
		elseif block.sp==104 and block2left>0 then
			block2left-=1
		end
	end		
	
	print(stat(1),100,88)
end