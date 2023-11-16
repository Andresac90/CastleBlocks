--collisions--

function collide_map(obj,dir,flag)
	--obj = table needs x,y,w,h
	--dir = left,right,up,down
	
	local x=obj.x local y=obj.y
	local w=obj.w local h=obj.h
	
	local x1=0 local y1=0
	local x2=0 local y2=0
		
	if dir=="left" then
		x1=x-1 		y1=y
		x2=x		y2=y+h-1
	
	elseif dir=="right" then
		x1=x+w-1	y1=y
		x2=x+w		y2=y+h-1
	
	elseif dir=="up" then
		x1=x+2		y1=y-1
		x2=x+w-3	y2=y
	
	elseif dir=="down" then
		x1=x+2		y1=y+h
		x2=x+w-3	y2=y+h
	end

	x1 += adder
	x2 += adder

	--debug rectamgle--
	x1r=x1		y1r=y1
	x2r=x2		y2r=y2
	-------------------

	--pixels to tiles--
	x1/=8		y1/=8
	x2/=8		y2/=8
	
	if fget(mget(x1,y1), flag) or fget(mget(x1,y2), flag) or fget(mget(x2,y1), flag) or fget(mget(x2,y2), flag) then
		return true
	else
		return false
	end
end


-->8