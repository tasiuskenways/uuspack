Config = {}

-- 10 System --
Config.ActivePlayers ={
    ["police"] = {
        NoTag = "No Tag",
        NoRank = "Officer",
        title = "Active Officer(s)",
        Authorized = {7,6,12},
        SpecialCallSigns = {
            {
                code = {min = "200", max = "210"}, 
                style = "command"
            },

            {
                code = {min = "300", max = "349"},
                style = "detective"
            },
            {
                code = {min = "350", max = "399"}, 
                style = "swat"
            },
            {
                code = {min = "400", max = "449"}, 
                style = "bcso"
            },
            {
                code = {min = "450", max = "499"}, 
                style = "trooper"
            },
            {
                code = {min = "500", max = "599"},
                style = "ranger"
            },


            {
                code = {min = "A-1", max = "A-2"}, 
                style = "AS"
            },
            {
                code = {min = "A-3", max = "A-4"}, 
                style = "AS"
            },
            {
                code = {min = "A-5", max = "A-6"}, 
                style = "AS"
            },
            {
                code = {min = "A-7", max = "A-8"}, 
                style = "AS"
            },
            {
                code = {min = "A-10", max = "A-9"}, 
                style = "AS"
            },
            {
                code = {min = "B-1", max = "B-2"}, 
                style = "BI"
            },
            {
                code = {min = "B-3", max = "B-4"}, 
                style = "BI"
            },
            {
                code = {min = "B-5", max = "B-6"}, 
                style = "BI"
            },
            {
                code = {min = "B-7", max = "B-8"}, 
                style = "BI"
            },
            {
                code = {min = "B-10", max = "B-9"}, 
                style = "BI"
            },

            {
                code = {min = "C-1", max = "C-2"}, 
                style = "CI"
            },
            {
                code = {min = "C-4", max = "C-3"}, 
                style = "CI"
            },
            {
                code = {min = "C-5", max = "C-6"}, 
                style = "CI"
            },
            {
                code = {min = "C-7", max = "C-8"}, 
                style = "CI"
            },
            {
                code = {min = "C-10", max = "C-9"}, 
                style = "CI"
            },

            {
                code = {min = "D-1", max = "D-2"}, 
                style = "DI"
            },
            {
                code = {min = "D-4", max = "D-3"}, 
                style = "DI"
            },
            {
                code = {min = "D-5", max = "D-6"}, 
                style = "DI"
            },
            {
                code = {min = "D-7", max = "D-8"}, 
                style = "DI"
            },
            {
                code = {min = "D-10", max = "D-9"}, 
                style = "DI"
            },

            {
                code = {min = "E-1", max = "E-2"}, 
                style = "EE"
            },
            {
                code = {min = "E-4", max = "E-3"}, 
                style = "EE"
            },
            {
                code = {min = "E-5", max = "E-6"}, 
                style = "EE"
            },
            {
                code = {min = "E-7", max = "E-8"}, 
                style = "EE"
            },
            {
                code = {min = "E-10", max = "E-9"}, 
                style = "EE"
            },
            {
                code = {min = "F-1", max = "F-2"}, 
                style = "EF"
            },
            {
                code = {min = "F-4", max = "F-3"}, 
                style = "EF"
            },
            {
                code = {min = "F-5", max = "F-6"}, 
                style = "EF"
            },
            {
                code = {min = "F-7", max = "F-8"}, 
                style = "EF"
            },
            {
                code = {min = "F-10", max = "F-9"}, 
                style = "EF"
            },

            -- Paleto
            {
                code = {min = "P-1", max = "P-2"}, 
                style = "PALETO"
            },
            {
                code = {min = "P-4", max = "P-3"}, 
                style = "PALETO"
            },
            {
                code = {min = "P-5", max = "P-6"}, 
                style = "PALETO"
            },
            {
                code = {min = "P-7", max = "P-8"}, 
                style = "PALETO"
            },
            {
                code = {min = "P-10", max = "P-9"}, 
                style = "PALETO"
            },

            -- Vangelico
            {
                code = {min = "V-1", max = "V-2"}, 
                style = "VANGELICO"
            },
            {
                code = {min = "V-4", max = "V-3"}, 
                style = "VANGELICO"
            },
            {
                code = {min = "V-5", max = "V-6"}, 
                style = "VANGELICO"
            },
            {
                code = {min = "V-7", max = "V-8"}, 
                style = "VANGELICO"
            },
            {
                code = {min = "V-10", max = "V-9"}, 
                style = "VANGELICO"
            },

            -- BB
            {
                code = {min = "BB-1", max = "BB-2"}, 
                style = "BIGBANK"
            },
            {
                code = {min = "BB-4", max = "BB-3"}, 
                style = "BIGBANK"
            },
            {
                code = {min = "BB-5", max = "BB-6"}, 
                style = "BIGBANK"
            },
            {
                code = {min = "BB-7", max = "BB-8"}, 
                style = "BIGBANK"
            },
            {
                code = {min = "BB-10", max = "BB-9"}, 
                style = "BIGBANK"
            },


            
            -- CA
            {
                code = {min = "CP-1", max = "CP-2"}, 
                style = "CAYO"
            },
            {
                code = {min = "CP-4", max = "CP-3"}, 
                style = "CAYO"
            },
            {
                code = {min = "CP-5", max = "CP-6"}, 
                style = "CAYO"
            },
            {
                code = {min = "CP-7", max = "CP-8"}, 
                style = "CAYO"
            },
            {
                code = {min = "CP-10", max = "CP-9"}, 
                style = "CAYO"
            },



            -- GI

            {
                code = {min = "G-1", max = "G-2"}, 
                style = "GI"
            },
            {
                code = {min = "G-4", max = "G-3"}, 
                style = "GI"
            },
            {
                code = {min = "G-5", max = "G-6"}, 
                style = "GI"
            },
            {
                code = {min = "G-7", max = "G-8"}, 
                style = "GI"
            },
            {
                code = {min = "G-10", max = "G-9"}, 
                style = "GI"
            },

            {
                code = {min = "H-1", max = "H-2"}, 
                style = "EH"
            },
            {
                code = {min = "H-4", max = "H-3"}, 
                style = "EH"
            },
            {
                code = {min = "H-5", max = "H-6"}, 
                style = "EH"
            },
            {
                code = {min = "H-7", max = "H-8"}, 
                style = "EH"
            },
            {
                code = {min = "H-10", max = "H-9"}, 
                style = "EH"
            },

            {
                code = {min = "M-1", max = "M-2"}, 
                style = "mem"
            },
            {
                code = {min = "M-4", max = "M-3"}, 
                style = "mem"
            },
            {
                code = {min = "M-5", max = "M6"}, 
                style = "mem"
            },
            {
                code = {min = "M-7", max = "M-8"}, 
                style = "mem"
            },
            {
                code = {min = "M-10", max = "M-90"}, 
                style = "mem"
            },


            {
                code = {min = "S-1", max = "S-2"}, 
                style = "es"
            },
            {
                code = {min = "S-4", max = "S-3"}, 
                style = "es"
            },
            {
                code = {min = "S-5", max = "S-6"}, 
                style = "es"
            },
            {
                code = {min = "S-7", max = "S-8"}, 
                style = "es"
            },
            {
                code = {min = "S-10", max = "S-90"}, 
                style = "es"
            },




            {
                code = {min = "SWAT-1", max = "SWAT-2"}, 
                style = "swatt"
            },
            {
                code = {min = "SWAT-4", max = "SWAT-3"}, 
                style = "swatt"
            },
            {
                code = {min = "SWAT-6", max = "SWAT-5"}, 
                style = "swatt"
            },
            {
                code = {min = "SWAT-7", max = "SWAT-8"}, 
                style = "swatt"
            },
            {
                code = {min = "SWAT-10", max = "SWAT-9"}, 
                style = "swatt"
            },

        }
    },
    ["ambulance"] = {
        NoTag = "No Tag",
        NoRank = "EMS",
        title = "Active EMS(s)",
        Authorized = {4,5,6,7,8},
        SpecialCallSigns = {
            {
                code = {min = "100", max = "207"}, 
                style = "command"
            },
        }
    },
    ["corrections"] = {
        NoTag = "No Tag",
        NoRank = "Corrections",
        title = "Active Corrections(s)",
        Authorized = {3,4,5},
        SpecialCallSigns = {
            {
                code = {min = "100", max = "102"}, 
                style = "command"
            },
            {
                code = {min = "103", max = "108"}, 
                style = "ranger"
            }
        }
    },
    ["iaa"] = {
        NoTag = "No Tag",
        NoRank = "iaa",
        title = "Active IAA(s)",
        Authorized = {3,4,5},
        SpecialCallSigns = {
            {
                code = {min = "100", max = "102"}, 
                style = "command"
            },
            {
                code = {min = "103", max = "108"}, 
                style = "ranger"
            }
        }
    },
}

local StringCharset = {}
local NumberCharset = {}

for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end
for i = 65,  90 do table.insert(StringCharset, string.char(i)) end
for i = 97, 122 do table.insert(StringCharset, string.char(i)) end

Config.RandomInt = function(length)
	if length > 0 then
		return Config.RandomInt(length-1) .. NumberCharset[math.random(1, #NumberCharset)]
	else
		return ''
	end
end

Config.RandomStr = function(length)
	if length > 0 then
		return Config.RandomStr(length-1) .. StringCharset[math.random(1, #StringCharset)]
	else
		return ''
	end
end