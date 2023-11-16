--inits--

function _init()
	init_menu()
end

function init_menu()
	_update60 = update_menu
	_draw = draw_menu
end

function init_game()
	_update60 = update_game
	_draw = draw_game
	player={
		sp=1,
		x=0,
		y=0,
		w=8,
		h=8,
		flpx=false,
		flpy=false,
		dx=0,
		dy=0,
		max_dx=2,
		max_dy=1.5,
		accx=0.5,
		accy=2,
		anim=0,
		running=false,
		jumping=false,
		fallimg=false,
		sliding=false,
		landed=false
	}
	
	gravity=0.3
	friction=0.85
		
	--maps limits--
	map_start=0
	map_end=128
	map_endy=104
		
	--respawn point--
	respawn_x=0
	respawn_y=88
	player.x=respawn_x
	player.y=respawn_y
	reset = false

	--timed animations--
	animtrampoline=false
	animdelay=15
		
	--debug rectangle--
	x1r=0 y1r=0 x2r=0 y2r=0
	collide_l="no"
	collide_r="no"
	collide_u="no"
	collide_d="no"
	-----------------------
		
	--change platform--
	changed=false
	--put platforms--
	block={
		sp=102,
		x=0,
		y=0,
		w=8,
		h=8
	}

	--blocks data table--
	blocks={

	}
	blocki=0

	buttonplatform=false

	--HUD--
	block1leftlevel = 2
	block2leftlevel = 1
	block1left=block1leftlevel
	block2left=block2leftlevel
	blocksleftx1=3
	blocksleftx2=13
	blocksleftx3=22
	blocksleftx4=31

	--level--
	level=1
	adder=0
	


end

-->8