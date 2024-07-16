RegisterNetEvent('wonder_pt_announce')
AddEventHandler('wonder_pt_announce', function(message)
	local toSay = ''
	toSay = message
	TriggerClientEvent('chat:addMessage', -1, {
		template = '<div style="padding: 0.4vw; margin: 0.4vw; background-color: rgba(30, 30, 46, 0.45); border-radius: 3px;"><font style="padding: 0.22vw; margin: 0.22vw; background-color: #ba181b; border-radius: 2px; font-size: 15px;"> <i class="fa-solid fa-bullhorn"></i><b> ANNOUNCEMENT</b></font><font style="background-color:rgba(20, 20, 20, 0); font-size: 17px; margin-left: 0px; padding-bottom: 2.5px; padding-left: 3.5px; padding-top: 2.5px; padding-right: 3.5px;border-radius: 0px;"></font><font style=" font-weight: 800; font-size: 15px; margin-left: 5px; padding-bottom: 3px; border-radius: 0px;"><b></b></font><font style=" font-weight: 200; font-size: 14px; border-radius: 0px;">{0}</font></div>',
		args = { toSay }
	})
end)