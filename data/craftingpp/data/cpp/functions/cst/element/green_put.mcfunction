advancement grant @s only cpp:elements
function cpp:locate/air
execute unless entity @e[type=area_effect_cloud,distance=..6,tag=cpp_front_air,limit=1] run function cpp:cst/element/green_switch
execute at @e[type=area_effect_cloud,distance=..6,tag=cpp_front_air,limit=1] run function cpp:cst/element/green_put1
kill @e[type=area_effect_cloud,distance=..9,tag=cpp_locate_block]
