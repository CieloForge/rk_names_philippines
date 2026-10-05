

function data()
	return {
		name = _("Philippines Visayas"),
		personNamesScript = {
			fileName = "rk_names_philippines::/names/philippines_person.script@personNameScriptFn",
			params = {}
		},
		townNamesScript = {
			fileName = "::/names/names.script@townsNameScriptFn",
			params = {
				languages = {
					en = "en",
					fallback = "en",
				},
				path = "philippines_visayas",
				modId = "rk_names_philippines"
			}
		},
		streetNamesScript = {
			fileName = "::/names/names.script@streetsNameScriptFn",
			params = {
				languages = {
					en = "en",
					fallback = "en",
				},
				path = "philippines_visayas",
				modId = "rk_names_philippines"
			}
		},
	}
end