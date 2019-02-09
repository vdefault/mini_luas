function RESOLVER()

local LocalPlayer = entities.GetLocalPlayer()

if LocalPlayer == nil then
	return
end

local resolver = gui.GetValue("rbot_resolver");
local font = draw.CreateFont("Verdana", 32, 750)
draw.SetFont(font);

if resolver == false then
	draw.Color(0,0,0,180);
	draw.Text(17, 982, "RESOLVER");
	draw.Color(255, 0, 0, 255);
	draw.Text(15, 980, "RESOLVER");
elseif resolver == true then
	draw.Color(0,0,0,180);
	draw.Text(17, 982, "RESOLVER");
	draw.Color(0, 255, 0, 255);
	draw.Text(15, 980, "RESOLVER");
end

end
callbacks.Register("Draw", RESOLVER)