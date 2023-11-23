--player functions--

function player_update()
	--ground physics--
	if collide_map(player,"down",2) then
		--sand=flag 2--
		friction=0.3
		player.accy=1.3
	elseif collide_map(player,"down",3) then	
		--ice=flag 3--	
		friction=0.96
		player.max_dx=1.5
		player.accy=2.2 
	elseif collide_map(player,"down",4) then	
		--trampoline=flag 4--	
		player.dy=-2.4
		player.landed=false
		animtrampoline=true
        sfx(6)
	else
		--default--		
		friction=0.8
		player.max_dx=1
		player.accy=2
	end	

	if collide_map(player,"down",6) or collide_map(player,"up",6) or collide_map(player,"left",6) or collide_map(player,"right",6) then	
		--key=flag 6--	
		haskey=true
        sfx(4)
	end
		
	--physics--
	player.dy+=gravity/4
	player.dx*=friction
	
	--controls--
	if btn(⬅️) then
		player.dx-=player.accx
		player.running=true
		player.flpx=true
	end
	if btn(➡️) then
		player.dx+=player.accx
		player.running=true
		player.flpx=false
	end
	
	--slide--
	if player.running and not btn(⬅️) and not btn(➡️) and not player.falling and not player.jumping then
		player.running=false
		player.sliding=true
	end
	
	--jump--
	if btnp(🅾️)
	and player.landed then
		player.dy-=player.accy
		player.landed=false
        sfx(0)
	end
	
	--check collision up and down--
	if player.dy>0 then
		player.falling=true
		player.landed=false
		player.jumping=false
				
		player.dy=limit_speed(player.dy,player.max_dy)
				
		if collide_map(player,"down",0) then
			player.landed=true
			player.falling=false
			player.dy=0
			player.y-=((player.y+player.h+1)%8)-1
				
			--debug rectangle--
			collide_d="yes"
			else collide_d="no"
			-------------------
						
		end
				
	elseif player.dy<0 then
		player.jumping=true
		if collide_map(player,"up",1) then
			player.dy=0
						
			--debug rectangle--
			collide_u="yes"
			else collide_u="no"
			-------------------
									
		end
				
	end

	--check collisioin left and right--
	if player.dx<0 then
		
		player.dx=limit_speed(player.dx,player.max_dx)
				
		if collide_map(player,"left",1) then
			player.dx=0
						
			--debug rectangle--
			collide_l="yes"
			else collide_l="no"
			-------------------
						
		end
				
	elseif player.dx>0 then
		
		player.dx=limit_speed(player.dx,player.max_dx)
		
		if collide_map(player,"right",1) then
			player.dx=0
						
			--debug rectangle--
			collide_r="yes"
			else collide_r="no"
			-------------------
						
		end		
				
	end
				
	--stop sliding--
	if player.sliding then
			if abs(player.dx)<.2 or player.running then
				player.dx=0
				player.sliding=false
			end
	end
		
	player.x+=player.dx
	player.y+=player.dy
 
	--limit player to map--
	if player.x<map_start then
 		player.x=map_start
	end
	if player.x>map_end-player.w then
 		player.x=map_end-player.w
	end
 	
	--player death & respawn--
	if player.y>map_endy then
 		reset = true
        sfx(1)
	end
 	
	if btnp(⬇️) then
		reset = true
	end

	--next level--
	if collide_map(player,"down",5) or collide_map(player,"up",5) then
		--door=flag 5--	
		if keyrequired then
			if haskey then
				checkerlevel=true
				if checkerlevel then
					level+=1
					reset=true
					checkerlevel=false
                    sfx(5)
				end
			end
		else
			checkerlevel=true
			if checkerlevel then
					level+=1
					reset=true
					checkerlevel=false
                    sfx(5)
			end
		end
		
	end	
 	
end

function limit_speed(num,maximum)
	return mid(-maximum,num,maximum)
end
-->8
