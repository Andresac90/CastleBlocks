--block system--

function putblocks()
	if btnp(❎) and not player.landed then
		if player.flpx then
			block.x=player.x-10+adder
			block.y=player.y+12
			buttonplatform=true
			
		else
			block.x=player.x+10+adder
			block.y=player.y+12
			buttonplatform=true
		end
	end
end

function changeblocks()
	if btnp(⬆️) and not changed then
		block.sp=104
		changed=true
        sfx(2)
	elseif btnp(⬆️) and changed then
		block.sp=102
		changed=false
        sfx(2)
	end
end
-->8
