﻿--updates--

function update_menu()
	if btnp(❎) then
		init_game()
	end
end

function update_game()
	player_update()
	player_animate()
	changeblocks()	
	trampoline_anim()
end