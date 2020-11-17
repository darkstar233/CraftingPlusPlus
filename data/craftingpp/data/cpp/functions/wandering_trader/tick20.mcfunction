data merge entity @s {ArmorDropChances:[-1.0f,-1.0f,-1.0f,-1.0f]}
loot replace entity @s armor.head 1 loot cpp:wandering_trader/hat

data modify entity @s Offers.Recipes prepend value {buy:{id:"minecraft:stone",Count:64b},sell:{id:"minecraft:emerald",Count:1b},maxUses:12}
data modify entity @s Offers.Recipes prepend value {buy:{id:"minecraft:stone",Count:64b},sell:{id:"minecraft:emerald",Count:1b},maxUses:12}
data modify entity @s Offers.Recipes prepend value {buy:{id:"minecraft:stone",Count:64b},sell:{id:"minecraft:emerald",Count:1b},maxUses:12}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:stone",Count:1b},maxUses:12}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:stone",Count:1b},maxUses:6}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:firework_star",Count:1b,tag:{display:{Name:'{"italic":false,"translate":"item.cpp.moon_shard"}'},id:"cpp:moon_shard",CustomModelData:12970027}},sell:{id:"minecraft:carrot_on_a_stick",Count:1b},maxUses:3}

# 修改交易
loot replace entity @s weapon.mainhand 1 loot cpp:wandering_trader/buy1
data modify entity @s Offers.Recipes[0].buy.id set from entity @s HandItems[0].id
data modify entity @s Offers.Recipes[0].buy.Count set from entity @s HandItems[0].Count

loot replace entity @s weapon.mainhand 1 loot cpp:wandering_trader/buy2
data modify entity @s Offers.Recipes[1].buy.id set from entity @s HandItems[0].id
data modify entity @s Offers.Recipes[1].buy.Count set from entity @s HandItems[0].Count

loot replace entity @s weapon.mainhand 1 loot cpp:wandering_trader/buy3
data modify entity @s Offers.Recipes[2].buy.id set from entity @s HandItems[0].id
data modify entity @s Offers.Recipes[2].buy.Count set from entity @s HandItems[0].Count

loot replace entity @s weapon.mainhand 1 loot cpp:wandering_trader/sell1
data modify entity @s Offers.Recipes[9].sell.id set from entity @s HandItems[0].id
data modify entity @s Offers.Recipes[9].buy.Count set from entity @s HandItems[0].Count

loot replace entity @s weapon.mainhand 1 loot cpp:wandering_trader/sell2
data modify entity @s Offers.Recipes[10].sell.id set from entity @s HandItems[0].id
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:potion"}}]}}] run function cpp:wandering_trader/potion
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:splash_potion"}}]}}] run function cpp:wandering_trader/splash_potion
loot replace entity @s weapon.mainhand 1 loot cpp:wandering_trader/sell2_count
data modify entity @s Offers.Recipes[10].buy.Count set from entity @s HandItems[0].Count
execute if entity @s[nbt={Offers:{Recipes:[{sell:{id:"minecraft:firework_rocket"}}]}}] run function cpp:wandering_trader/firework_rocket

loot replace entity @s weapon.mainhand 1 loot cpp:wandering_trader/sell3
data modify entity @s Offers.Recipes[11].sell.id set from entity @s HandItems[0].id
data modify entity @s Offers.Recipes[11].sell.tag set from entity @s HandItems[0].tag

replaceitem entity @s weapon.mainhand air
tag @s add cpp_trade_added
