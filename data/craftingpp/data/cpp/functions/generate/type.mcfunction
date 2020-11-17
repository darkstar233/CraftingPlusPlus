setblock ~ 255 ~ barrel
loot replace block ~ 255 ~ container.0 loot cpp:misc/generate
# 附魔室
execute if data block ~ 255 ~ Items[{id:"minecraft:enchanting_table"}] run function cpp:generate/structures/enchanting_room
# 图腾柱
execute if data block ~ 255 ~ Items[{id:"minecraft:stone_bricks"}] run function cpp:generate/structures/totem_pillar
# 水果树
execute if data block ~ 255 ~ Items[{id:"minecraft:apple"}] if block ~ ~ ~ #cpp:sapling_plantable_on positioned ~ ~1 ~ run function cpp:plants/trees/fruit0
# 矿石树
execute if data block ~ 255 ~ Items[{id:"minecraft:iron_ore"}] if block ~ ~ ~ #cpp:sapling_plantable_on positioned ~ ~1 ~ run function cpp:plants/trees/ore0
# 羊毛树
execute if data block ~ 255 ~ Items[{id:"minecraft:white_wool"}] if block ~ ~ ~ #cpp:sapling_plantable_on positioned ~ ~1 ~ run function cpp:plants/trees/wool0
# 樱花树
execute if data block ~ 255 ~ Items[{id:"minecraft:pink_wool"}] if block ~ ~ ~ #cpp:sapling_plantable_on positioned ~ ~1 ~ run function cpp:plants/trees/sakura0
# 小麦田
execute if data block ~ 255 ~ Items[{id:"minecraft:wheat"}] if block ~ ~ ~ grass_block run function cpp:generate/structures/crops_wheat
# 甜菜根田
execute if data block ~ 255 ~ Items[{id:"minecraft:beetroot"}] if block ~ ~ ~ grass_block run function cpp:generate/structures/crops_beetroot
# 胡萝卜田
execute if data block ~ 255 ~ Items[{id:"minecraft:carrot"}] if block ~ ~ ~ grass_block run function cpp:generate/structures/crops_carrot
# 马铃薯田
execute if data block ~ 255 ~ Items[{id:"minecraft:potato"}] if block ~ ~ ~ grass_block run function cpp:generate/structures/crops_potato
# 花草丛
execute if data block ~ 255 ~ Items[{id:"minecraft:grass"}] run function cpp:generate/structures/modcrops
setblock ~ 255 ~ air
kill @s
