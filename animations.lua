--animation--

function player_animate()
	if player.jumping then
		player.sp=7
	elseif player.falling then
		player.sp=8
	elseif player.sliding then
		player.sp=9
	elseif player.running then
		if time()-player.anim>.1 then
				player.anim=time()
				player.sp+=1
				if player.sp>6 then
						player.sp=3
				end
		end
	else --player idle--
		if time()-player.anim>.3 then
			player.anim=time()
			player.sp+=1
			if player.sp>2 then
				player.sp=1
			end
		end
	end
end

--trampoline animation--
function trampoline_anim()
	if animtrampoline then
		animdelay-=1
		block.sp=105
		if animdelay<1 then
			block.sp=104
			animdelay=15
			animtrampoline=false
		end
	end
end