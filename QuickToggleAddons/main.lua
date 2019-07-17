--https://github.com/restofurryan88/QuickToggleAddons

local qtaAddonList = {}
qtaAddonList[1] = "AllTheThings"
qtaAddonList[2] = "TradeSkillMaster"
--etc.

local function qtaPrintDebugMessage(isDebug, message)
	local baseMessage = "QTA Debugger: "
	if isDebug then
		print (baseMessage .. message)
	end
end
local qtaIsDebugging = false; --set to true to get debugging messages

local function qtaToggleAddon(addonName, turnOn)
	if turnOn and IsAddOnLoaded(addonName) then
		return
	end
	if not turnOn and not IsAddOnLoaded(addonName) then
		return
	end
	if not turnOn and IsAddOnLoaded(addonName) then
		DisableAddOn(addonName)
		return
	end
	if turnOn and not IsAddOnLoaded(addonName) then
		EnableAddOn(addonName)
		return
	end
end

SLASH_QTA1 = "/qta"
SlashCmdList["QTA"] = function(onOff)
	qtaPrintDebugMessage(qtaIsDebugging, "Command received")
	print("On or Off?: ".. onOff)
	local togglingOn = false
	if onOff == nil or onOff == "" then
		print("onOff was not provided")
		return
	end
	if onOff == "on" or onOff == "On" or onOff == "ON" then
		togglingOn = true
	elseif onOff == "off" or onOff == "Off" or onOff == "OFF" then
		togglingOn = false
	else
		print("onOff was invalid")
		return
	end
	
	qtaPrintDebugMessage(qtaIsDebugging, "Iterating over table")
	for i,addon in ipairs(qtaAddonList) do 
		qtaPrintDebugMessage(qtaIsDebugging, "Toggling Addon " .. addon)
		qtaToggleAddon(addon, togglingOn)
	end

	ReloadUI()
end