local lush = require("lush")
local hsl = lush.hsl

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		Normal({ bg = "#161616", fg = "#EFEFE7" }),
		SignColumn({ Normal }),
		LineNr({ Normal, fg = "#70706d" }),
		EndOfBuffer({ LineNr }),
		WinSeparator({ LineNr }),
		Comment({ fg = "#568E58" }),

		Visual({ bg = "#323232" }),

		Special({ fg = "#C8B0F6" }),
		NonText({ Special }),

		Delimiter({ fg = "#EFEFE7" }),
		Identifier({ Delimiter }),
		sym("@operator")({ Delimiter }),
		sym("@variable")({ Identifier }),
		sym("@constant")({ Identifier }),

		MatchParen({ fg = "#FFFFFF", gui = "underline" }),

		Type({ fg = "#3FB0B6" }),
		sym("@constructor")({ Type, gui = "bold" }),
		sym("@method")({ Type }),

		Typedef({ fg = "#E2D082", gui = "bold" }),
		StorageClass({ Typedef }),
		Structure({ Typedef }),
		Keyword({ Typedef }),
		sym("@include")({ Typedef }),

		Statement({ Keyword }),
		sym("@keyword")({ Keyword }),
		sym("@type.qualifier")({ Keyword }),

		Number({ fg = "#96D097" }),

		Character({ fg = "#D58485" }),
		String({ Character }),
		sym("@string")({ String }),

		Constant({ fg = "#B7D4EB" }),
		sym("@constant.builtin")({ fg = "#B7D4EB" }),
		sym("@symbol")({ fg = "#B7D4EB" }),
		sym("@variable.builtin")({ fg = "#B7D4EB" }),
		Boolean({ fg = "#B7D4EB", gui = "bold" }),
		sym("@boolean")({ fg = "#B7D4EB", gui = "bold" }),

		Function({ fg = "#65D2D8" }),
		sym("@function.call")({ Function }),
		sym("@method.call")({ Function }),
		sym("@method.call")({ Function }),

		NormalFloat({ bg = "#111111", fg = "#EFEFE7" }),
		Pmenu({ NormalFloat }),
		CmpItemMenu({ NormalFloat }),
		CmpItemDefault({ NormalFloat }),
		CmpItemAbbr({ NormalFloat }),
		PmenuSel({ bg = "#222222", fg = "#EFEFE7" }),
		PmenuSbar({ PmenuSel }),
		PmenuThumb({ PmenuSel, bg = "#444444" }),

		sym("@property")({ fg = "#df9d6f" }),
		sym("@namespace")({ fg = "#A6E1A7" }),

		Error({ fg = "#E69495" }),
		WarningMsg({ fg = "#DF9D6F" }),
		DiagnosticHint({ fg = "#96D097" }),
		DiagnosticInfo({ fg = "#96D097" }),
	}
end)

return theme
