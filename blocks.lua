--block system--

function putblocks()
	if btnp(❎) and not player.landed then
		if player.flpx then
			block.x=player.x-10
			block.y=player.y+12
			buttonplatform=true
			if block.sp==102 then
				block1left-=1
			else
				block2left-=1
			end

		else
			block.x=player.x+10
			block.y=player.y+12
			buttonplatform=true
		end
	end
end

function changeblocks()
	if btnp(⬆️) and not changed then
		block.sp=104
		changed=true
		
	elseif btnp(⬆️) and changed then
		block.sp=102
		changed=false
	end
end
-->8