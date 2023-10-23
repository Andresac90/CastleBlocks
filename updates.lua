--updates--

function update_menu()
	if btnp(❎) then
		_update60 = update_game
		_draw = draw_game
		init_game()
	end
end

function update_game()
	player_update()
	player_animate()
	changeblocks()	
	trampoline_anim()
end