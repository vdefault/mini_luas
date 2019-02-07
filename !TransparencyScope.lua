local old_chams = gui.GetValue("esp_self_chams");
local old_vcR, old_vcG, old_vcB, old_vcA = gui.GetValue("clr_chams_ct_vis");
local old_icR, old_icG, old_icB, old_icA = gui.GetValue("clr_chams_ct_invis");
local invischams = {0, 0, 0, 0, 0};
local vischams = {48, 48, 48, 155};
local old_xqz = gui.GetValue("esp_self_xqz");
local teambased = gui.GetValue("esp_teambasedcolors");
local old_tchams = gui.GetValue("esp_team_chams");
local old_txqz = gui.GetValue("esp_team_xqz");

function transparency()

local LocalPlayer = entities.GetLocalPlayer();
if LocalPlayer == nil then
return
end
if(LocalPlayer:GetProp("m_bIsScoped") == 0) then
	gui.SetValue("esp_self_chams", old_chams);
	gui.SetValue("esp_self_xqz", old_xqz);
	gui.SetValue("esp_teambasedcolors", teambased);
	gui.SetValue("esp_team_chams", old_tchams);
	gui.SetValue("esp_team_xqz", old_txqz);
	gui.SetValue("clr_chams_ct_invis", old_icR, old_icG, old_icB, old_icA);
	gui.SetValue("clr_chams_ct_vis", old_vcR, old_vcG, old_vcB, old_vcA);
elseif(LocalPlayer:GetProp("m_bIsScoped") == 1) then
	gui.SetValue("esp_self_chams", 2);
	gui.SetValue("esp_self_xqz", 0);
	gui.SetValue("esp_teambasedcolors", 1);
	gui.SetValue("esp_team_chams", 0);
	gui.SetValue("esp_team_xqz", 0);
	gui.SetValue("clr_chams_ct_invis", invischams[1], invischams[2], invischams[3], invischams[4], invischams[5]);
	gui.SetValue("clr_chams_ct_vis", vischams[1], vischams[2], vischams[3], vischams[4], vischams[5]);
end

end
callbacks.Register("Draw", "transparency", transparency);