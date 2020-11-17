function cpp:locate/air
execute at @e[type=area_effect_cloud,distance=..6,tag=cpp_front_air,limit=1] run function cpp:tool/coordinate_recorder_done
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block]
