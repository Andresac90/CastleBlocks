--updates--

function update_menu()
	if btnp(❎) then
		init_game()
	end
end

function update_ending()
	if btnp(❎) then
		init_menu()
	end
end

function update_game()
	player_update()
	player_animate()
	changeblocks()	
	trampoline_anim()
	levelmanager()
end