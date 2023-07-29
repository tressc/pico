pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
function _init()
    spr_i = 0
    my_draw = draw_flip
	cls(1)
end
 
function _update()
	a = flr(time() * 40)
    border_left = a
    border_right = a + 20 - a/2

    color_left = border_left + 1
    color_right = border_right - 1

    if border_right < border_left then
        if border_left - border_right > 20 then
            my_draw = draw_none
        end
        spr_i = 1
        color_left = border_right + 1
        color_right = border_left - 1
    end
end
 
function _draw()
    -- sspr(8, 0, 32, 32, 50, 50)
    my_draw()
end

function draw_flip()
    cls(1)
	-- print(a, 0, 0, 7)
    -- rect(border_left, 50, border_right, 70, 7)
    -- rectfill(color_left, 51, color_right,69, color)
    sspr(8 + spr_i * 32, 0, 32, 32, color_left, 51, abs(color_right - color_left) + 1, 19)
end

function draw_none()
end

__gfx__
0000000088888888888888888888888888888888cccccccccccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888888888888888888888cccccc9ccccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0070070088888888888888888888888888888888ccccc99ccccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0007700088888888888888888888888888888888ccccc999cccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0007700088888888888888888888888888888888cccc99999ccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0070070088888888888888888888888888888888cccc999999cccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0000000088888883333388888888888888888888cccc999999cccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0000000088888833333338888888888888888888ccccc99999cccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0000000088888333333333888888888888888888cccccccc999ccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0000000088883333333333388888888888888888cccccccc999ccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0000000088883333333333388888888888888888cccccccc999ccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0000000088883333333333388888888883338888ccccccc9999ccccccc999999cccccccc00000000000000000000000000000000000000000000000000000000
0000000088883333333333388888888833333888cccccc9999ccccccc9999999cccccccc00000000000000000000000000000000000000000000000000000000
0000000088883333333333388888888833333888cccccc9999cccccccc9999999ccccccc00000000000000000000000000000000000000000000000000000000
0000000088888333333333888888888833333888ccccc9999cccccccccccc9999cc9cccc00000000000000000000000000000000000000000000000000000000
0000000088888833333338888888888833333888cccc9999cccccccccccccc999cc9cccc00000000000000000000000000000000000000000000000000000000
0000000088888883333388888888888883338888ccc9999ccccccccccccccc999cc9cccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888888888888888888888ccc9999ccccccccccccccc999cc9cccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888888888888888888888ccc9999cccccccccccccc999ccc9cccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888888888888888888888ccc9999999ccccccccccc999ccc9cccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888888888888888888888cccc999999ccccccccccc99cccc9cccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888888888888888888888cccc9999999cccccccccc999ccc9cccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888888333388888888888ccccccccc99ccccccccc9999ccc9cccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888883333338888888888ccccccccc99ccccccccc9999cc99cccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888833333333888888888ccccccccc99cccccccccc9999999cccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888833333333888888888ccccccccc999ccccccccc9999999cccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888833333333888888888ccccccccc999cccccccccc999999cccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888883333338888888888ccccccccc999cccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888888333388888888888cccccccccccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888888888888888888888cccccccccccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888888888888888888888cccccccccccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0000000088888888888888888888888888888888cccccccccccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
