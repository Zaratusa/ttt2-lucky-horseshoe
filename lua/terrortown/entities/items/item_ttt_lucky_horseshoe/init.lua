-- author "Zaratusa"
-- contact "http://steamcommunity.com/profiles/76561198032479768"

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

--[[Perk logic]]--
hook.Add("EntityTakeDamage", "TTT2LuckyHorseshoe", function(ent, dmginfo)
	if (dmginfo:IsFallDamage() and IsValid(ent) and ent:IsPlayer() and ent:Alive() and ent:IsTerror() and ent:HasEquipmentItem("item_ttt_lucky_horseshoe")) then
		dmginfo:ScaleDamage(0.10) -- decrease damage by 90%
		if (dmginfo:GetDamage() > 35) then -- maximum of 35 damage
			dmginfo:SetDamage(35)
		end
	end
end)
