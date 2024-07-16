TriggerEvent('chat:addSuggestion', '/pt', 'Toggle peacetime.', {{
	{ name="reason", help=TranslateCap('pt_reason_chat') },
}})

ptEnabled = false

RegisterNetEvent('wonder_pt:enabled', function()
  ptEnabled = true
  SendNUIMessage({
    type = 'enablePT',
  })
end)

RegisterNetEvent('wonder_pt:disabled', function()
  ptEnabled = false
  SendNUIMessage({
    type = 'disablePT',
  })
end)

AddStateBagChangeHandler("peacetimePD", nil, function() 
    if GlobalState.peacetime == true and ptEnabled == false then
		TriggerEvent('wonder_pt:enabled')
	elseif GlobalState.peacetimePD == true and ptEnabled == false then
		TriggerEvent('wonder_pt:enabled')
	elseif GlobalState.peacetimePD == false and GlobalState.peacetime == false and ptEnabled == true then
		TriggerEvent('wonder_pt:disabled')
	end
end)

