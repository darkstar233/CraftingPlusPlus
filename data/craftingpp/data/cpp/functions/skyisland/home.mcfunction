tag @s add cpp_home_player
summon area_effect_cloud ~ 66 ~ {Tags:["cpp_home_back"]}
execute as @e[type=area_effect_cloud,tag=cpp_home_back,limit=1] run function cpp:skyisland/home_marker
tag @s remove cpp_home_player
scoreboard players reset @s cppHome
