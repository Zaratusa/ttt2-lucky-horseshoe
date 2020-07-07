-- author "Zaratusa"
-- contact "http://steamcommunity.com/profiles/76561198032479768"

CreateConVar("ttt_luckyhorseshoe_detective", 1, {FCVAR_SERVER_CAN_EXECUTE, FCVAR_ARCHIVE, FCVAR_REPLICATED}, "Should Detectives be able to buy the Lucky Horseshoe?", 0, 1)
CreateConVar("ttt_luckyhorseshoe_traitor", 1, {FCVAR_SERVER_CAN_EXECUTE, FCVAR_ARCHIVE, FCVAR_REPLICATED}, "Should Traitors be able to buy the Lucky Horseshoe?", 0, 1)

ITEM.EquipMenuData = {
	type = "item_passive",
	name = "lucky_horseshoe_name",
	desc = "lucky_horseshoe_desc",
}
ITEM.hud = Material("vgui/ttt/perks/item_lucky_horseshoe_hud.png")
ITEM.material = "vgui/ttt/icon_lucky_horseshoe"
ITEM.CanBuy = {}
ITEM.credits = 1

if (GetConVar("ttt_luckyhorseshoe_detective"):GetBool()) then
	table.insert(ITEM.CanBuy, ROLE_DETECTIVE)
end
if (GetConVar("ttt_luckyhorseshoe_traitor"):GetBool()) then
	table.insert(ITEM.CanBuy, ROLE_TRAITOR)
end
