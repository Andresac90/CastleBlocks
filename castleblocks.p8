pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
#include inits.lua
#include updates.lua
#include draws.lua
#include collisions.lua
#include playerfunctions.lua
#include blocks.lua
#include animations.lua
#include levelmanager.lua


__gfx__
00000000004444400044444000044444000444440004444400044444000444448004444400000000000000000000000000000000000000000000000000000000
00000000008888800088888008888888080888888008888880888888008888880888888804444400000000000000000000000000000000000000000000000000
0070070008f72f2008f72f20800ff72f808ff72f088ff72f080ff72f080ff72f000ff72f08888800000000000000000000000000000000000000000000000000
0007700008fffff008fffef0000ffffe000ffffe000ffffe000ffffe800ffffe000ffffe8f72f200000000000000000000000000000000000000000000000000
0007700000088000008888000f8880000f8880000f8880000f88800000888000000088808fffef00000000000000000000000000000000000000000000000000
00700700008888000f0880f0000880000008800000088000000880000f0880000000880f008888f0000000000000000000000000000000000000000000000000
000000000f08d0f00008d0000880d000008d00000dd0800000d8000000d80000000008d00f088d00000000000000000000000000000000000000000000000000
0000000000800d0000800d000000d000008d00000000800000d800000d8000000000008d000088dd000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb00bbbbbbbbbbbb00f999999f9999999fc6ccccccc6cccccccccccccccccccccc00000000000000000000000000000000
3bbb3bbb3bbbbbb33bbbbbb33bbbbb3b0bbbb3b33b33bbb09ff99ff9999999996ccc6ccc6ccccccccccccccc667ccccc00000000000000000000000000000000
33b333b333bbbbb333bbbbb33333b333bbbb3434434333bb999ff99999999999ccc6ccc6ccccc6cccccccccc6777cccc00000000000000000000000000000000
4b34443443333b34433333b34443b344b3bb34444444433bf999999ff999999fcc6ccccccccc6ccccccccccc6777cccc00000000000000000000000000000000
4b34244444444334444443b394443344bb3334444444443b9f99f9f99f99f9f97cccccc77ccccc77cccccccc67777ccc00000000000000000000000000000000
434444444d4484448444433444444444b34444444494434b49ff9f9449ff9f9477cccc7447ccc774cccccccc677777cc00000000000000000000000000000000
44444d444444444444444d4444444d44bb344d4f4444443b44999944449999444777774444777744cccccccc6777777c00000000000000000000000000000000
49444444444444944944444448444444334444444444444344444444444444444477444444444444cccccccc6666666600000000000000000000000000000000
444444444444444444444444444444440005500000000000bbb9999ff9999bbbb66ccc6ccc6cc66b000000000000000000000000000000000000000000000000
4444445446444444444445444444449400544500000000003b399ff99ff993b33b37c6ccc6cc7773000000000000000000000000000000000000000000000000
444494444444224444f4444444f444440544445000000000434449999994443443477cccccc77434000000000000000000000000000000000000000000000000
44f4444444442e24444444444444474405444450000000004444499ff9944444444477c777744444000000000000000000000000000000000000000000000000
44444444494442244d6644444e44477405444a50000000004e4444f99f4444444e44477744444444000000000000000000000000000000000000000000000000
44444444444444444d66649444447d44054444500000000044444444444444d444444444444444d4000000000000000000000000000000000000000000000000
444446444444444444ddd4444477d44405444450000000004464444444e444444464444444e44444000000000000000000000000000000000000000000000000
44e44444444444444444444444474444054444500000000044444d444444444444444d4444444444000000000000000000000000000000000000000000000000
333333333333333344444444444444440000000000000000bbbbbbbb444444440988889000000000000000000000000000000000000000000000000000000000
bbbb3bbbbbbbbb3b999949999999994900000000000000003bbb3bbb444445440988889000000000000000000000000000000000000000000000000000000000
bbb3bbbbbbbbb3bb9994999999999499000000000000000033b333b344f44444000dd000000000000aa000000000000000000000000000000000000000000000
3333333333333333444444444444444400000000000000004b3444344444444400d00d0000000000a00aaaaa0000000000000000000000000000000000000000
b3bbbb3bb3bbbbbb949999499499999900000000000000004b3424444d664444000dd00009888890a00900900000000000000000000000000000000000000000
bb3bbb3bbb3bbbbb99499949994999990000000000000000434444444d66649400d00d00098888900a9000000000000000000000000000000000000000000000
33333333333333334444444444444444000000000000000044444d4444ddd444000dd00000d00d00000000000000000000000000000000000000000000000000
003bb300000000000049940000000000000000000000000049444444444444440044440000444400000000000000000000000000000000000000000000000000
003bb300003bb3000049940000499400000000000000000000000000700000000000000000000000000000000700000000000000000000000000000000000000
003bb300003bb3000049940000499400000000000000000007777777700000007777777700000000700000000700000000000000000000000000000000000000
0033b300003bb3000044940000499400000000000000000070000000700000000000000000000000070000000700000000000000000000000000000000000000
003bb300003333000049940000444400000000000000000070000000700000000000000000000000070000000700000000000000000000000000000000000000
003bb300003bb3000049940000499400000000000000000070000000700000000000000000000000070000000700000000000000000000000000000000000000
003b3300003bb3000049440000499400000000000000000070000000700000000000000000000000070000000700000000000000000000000000000000000000
003bb300003bb3000049940000499400000000000000000070000000077777770000000077777777070000007000000000000000000000000000000000000000
003bb300003bb3000049940000499400000000000000000070000000000000000000000000000000070000000000000000000000000000000000000000000000
__gff__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003030303030307070b0b00000000000003030303200007070b0b0000000000000101010100000303111140000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000054000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000540000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000540000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005400000000000000000000000000000054000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000005400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4041404240414000000042404142434140404040404040404000000000000000404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040404040
5052505053505100000053505050505050535051505250505000000000000000505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050505050
76787878787a0000000000000000000076787878787a0000000000000000000076787878787a0000000000000000000076787878787a0000000000000000000076787878787a0000000000000000000076787878787a0000000000000000000076787878787a0000000000000000000000000000000000000000000000000000
77797979797b0000000000000000000077797979797b0000000000000000000077797979797b0000000000000000000077797979797b0000000000000000000077797979797b0000000000000000000077797979797b0000000000000000000077797979797b0000000000000000000000000000000000000000000000000000
