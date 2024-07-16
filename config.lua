Config = {}

Config.Locale = GetConvar('esx:locale', 'en')
Config.usePerms = false; -- wonder.pt

Config.policeJobs = {
    'police',
	'sheriff'
}

function SendNotify(msg, typ)
    TriggerClientEvent('okokNotify:Alert', source, 'Peacetime', msg, 5000, typ, true)
end