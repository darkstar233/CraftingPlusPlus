setblock ~1 ~1 ~1 structure_block{posX:-1,posY:0,posZ:-1,name:"cpp:crops",mode:"LOAD"}
setblock ~1 ~2 ~1 redstone_block
setblock ~1 ~ ~1 water
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_temp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_temp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_temp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_temp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_temp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_temp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_temp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_temp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["cpp_temp"]}

spreadplayers ~ ~ 0 2 false @e[type=area_effect_cloud,distance=..5,tag=cpp_temp]
execute at @e[type=area_effect_cloud,distance=..5,tag=cpp_temp] if block ~ ~-1 ~ grass_block run setblock ~ ~-1 ~ farmland[moisture=7]
execute at @e[type=area_effect_cloud,distance=..5,tag=cpp_temp] if block ~ ~-1 ~ farmland run setblock ~ ~ ~ carrots
kill @e[type=area_effect_cloud,distance=..5,tag=cpp_temp]
