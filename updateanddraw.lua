--update and draw--

function _update60()
	player_update()
	player_animate()
	changeblocks()	
	trampoline_anim()
end

function _draw()
	cls()
	map(0,0)
	spr(player.sp,player.x,player.y,1,1,player.flpx)
	--HUD--
	spr(102,3,116)
	print("X"..block1left,13,117)
	spr(104,23,116)
	print("X"..block2left,32,117)

	print("⬆️",54,113)
	print("change block",64,113)
	print("⬇️",54,120)
	print("try again",64,120)

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
		if buttonplatform then
			mset(block.x/8,block.y/8,block.sp)
		end			
	print(stat(1),100,88)	
end
-->8
