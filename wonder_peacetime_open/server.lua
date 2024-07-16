ESX = exports["es_extended"]:getSharedObject()

if not GlobalState.peacetime then
	GlobalState.peacetime = false
end

RegisterCommand('pt', function(source, args)
    if not Config.usePerms or IsPlayerAceAllowed(source, 'wonder.pt') then
		if GlobalState.peacetimePD then
			SendNotify(TranslateCap('no_PD'), "error")
        elseif GlobalState.peacetime then
            GlobalState.peacetime = false
            TriggerClientEvent('wonder_pt:disabled', -1)
			TriggerEvent('wonder_pt_announce', TranslateCap('pt_disabled'))
        else
            GlobalState.peacetime = true
            TriggerClientEvent('wonder_pt:enabled', -1)
			if args[1] ~= nil then
				local toSay = ''
				for i=1,#args do
					toSay = toSay .. args[i] .. ' ' 
				end
				TriggerEvent('wonder_pt_announce', TranslateCap('pt_reason')..toSay)
			else
				TriggerEvent('wonder_pt_announce', TranslateCap('pt_noreason'))
			end
        end
    end
end, false)

Citizen.CreateThread( function(source)
	while true do
		xPlayers = ESX.GetPlayers()
		PoliceConnected = 0
		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			
			if xPlayer == nil then
			
			else
				for k,v in pairs(Config.policeJobs) do
					if xPlayer.job.name == v then
						PoliceConnected = PoliceConnected + 1
					end
				end
			end
		end
		
		if PoliceConnected == 0 then
			GlobalState.peacetimePD = true
		else
			GlobalState.peacetimePD = false
		end
		--print(PoliceConnected)
		Citizen.Wait(1000 * 2) -- secconds
	end
end)