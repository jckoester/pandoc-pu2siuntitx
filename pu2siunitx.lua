--- ToDo
--- * eigenständige Einheiten \unit{} abbilden


local combinedunits = { 
  "fmol", "pmol", "nmol", "mmol", "mol", "kmol",
  "fg", "pg", "ng", "mg", "g", "kg",
  "pm", "nm", "mm", "cm", "dm", "km",
  "as", "fs", "ps", "ns", "ms", "s",
  "pA", "nA", "mA", "A", "kA",
  "mL", "L", "hL", "ml", "hl", "l",
  "mHz", "Hz", "kHz", "MHz", "GHz", "THz",
  "mN", "N", "kN", "MN",
  "Pa", "kPa", "MPa", "GPa",
  "eV", "keV", "MeV", "GeV", "TeV",
  "pV", "nV", "mV", "V", "kV",
  "kWh",
  "W", "nW", "mW", "kW", "MW", "GW",
  "J", "kJ", "mJ",
  "F", "fF", "pF", "nF", "mF",
  "H", "fH", "pH", "nH", "mH", 
  "C", "nC", "mC",
  "mT",
  "K",
  "dB"
}

function siparse(us)
  --- fractions
  us= string.gsub(us, "%//(%a+)", "\\per %1 ")
  us= string.gsub(us, "%/(%a+)", "\\per %1 ")
  us= string.gsub(us, "%*(%a+)%-1", "\\per %1 ")
  us= string.gsub(us, "%s(%a+)%-1", "\\per %1 ")
  --- multiples
  us= string.gsub(us, "%*(%a+)", "\\cdot %1")
  -- special unit - some have to be translated before standard units
  us= string.gsub(us, "%sWb", "\\weber")
  us= string.gsub(us, "%scd", "\\candela")
  us= string.gsub(us, "%srad", "\\radian ")
  us= string.gsub(us, "d$", "\\day")
  us= string.gsub(us, "%sGy", "\\gray ")
  us= string.gsub(us, "%slm", "\\lumen ")
  us= string.gsub(us, "%skat", "\\katal ")
  us= string.gsub(us, "%slx", "\\lux ")
  us= string.gsub(us, "%ssr", "\\steradian ")
  us= string.gsub(us, "%sau", "\\astronomicalunit ")
  us= string.gsub(us, "%sha", "\\hectare ")
  us= string.gsub(us, "%sh$", "\\hour ")
  us= string.gsub(us, "%sNp", "\\neper ")
  us= string.gsub(us, "%sT$", "\\tesla ")
  --- combined units (short forms)
  for _, v in pairs(combinedunits) do
    us= string.gsub(us, "%s"..v, "\\"..v.." ")
  end
  --- prefixes
  us= string.gsub(us, "^%s?q", "\\quecto ")
  us= string.gsub(us, "^%s?r", "\\ronto ")
  us= string.gsub(us, "^%s?y", "\\yocto ")
  us= string.gsub(us, "^%s?z", "\\zepto ")
  us= string.gsub(us, "^%s?a", "\\atto ")
  us= string.gsub(us, "^%s?f", "\\femto ")
  us= string.gsub(us, "^%s?p", "\\pico ")
  us= string.gsub(us, "^%s?n", "\\nano ")
  us= string.gsub(us, "^%s?\\mu", "\\micro ")
  us= string.gsub(us, "^m", "\\milli ")
  us= string.gsub(us, "^%s?c", "\\centi ")
  us= string.gsub(us, "^%s?da", "\\deca ") -- deca needs to be replaced before deci!
  us= string.gsub(us, "^%s?d", "\\deci ")
  us= string.gsub(us, "^%s?h", "\\hecto ")
  us= string.gsub(us, "^%s?k", "\\kilo ")
  us= string.gsub(us, "^%s?M", "\\mega ")
  us= string.gsub(us, "^%s?G", "\\giga ")
  us= string.gsub(us, "^%s?T", "\\tera ")
  us= string.gsub(us, "^%s?P", "\\peta ")
  us= string.gsub(us, "^%s?E", "\\exa ")
  us= string.gsub(us, "^%s?Z", "\\zetta ")
  us= string.gsub(us, "^%s?Y", "\\yotta ")
  us= string.gsub(us, "^%s?R", "\\ronna ")
  us= string.gsub(us, "^%s?Q", "\\quetta ")
  --- binary prefixes
  us= string.gsub(us, "^%s?Ki", "\\kibi ")
  us= string.gsub(us, "^%s?Mi", "\\mebi ")
  us= string.gsub(us, "^%s?Gi", "\\gibi ")
  us= string.gsub(us, "^%s?Ti", "\\tebi ")
  us= string.gsub(us, "^%s?Pi", "\\pebi ")
  us= string.gsub(us, "^%s?Ei", "\\exbi ")
  us= string.gsub(us, "^%s?Zi", "\\zebi ")
  us= string.gsub(us, "^%s?Yi", "\\yobi ")
  --- special units and units without short form
  us= string.gsub(us, "%smin", "\\minute ")
  us= string.gsub(us, "%sm", "\\meter ") -- meter has to be treated seperately not to get mixed up by milli
  us= string.gsub(us, "%sBq", "\\becquerel ")
  us= string.gsub(us, "%s°C", "\\degreeCelsius ")
  us= string.gsub(us, "%sSv", "\\sievert ")
  us= string.gsub(us, "%sS", "\\siemens ")
  --- special units - non SI
  us= string.gsub(us, "%sB", "\\bel ")
  us= string.gsub(us, "%sDa", "\\dalton ")
  us= string.gsub(us, "%s°", "\\degree ")
  us= string.gsub(us, "%s''", "\\arcsecond ")
  us= string.gsub(us, "%s'", "\\arcminute ")
  us= string.gsub(us, "%st", "\\tonne ")
  us= string.gsub(us, "\\Omega", "\\ohm ")
  --- powers
  us= string.gsub(us, "%(%a+)%^2", "%1\\squared ")
  us= string.gsub(us, "%(%a+)%^3", "%1\\cubed ")
  --- powers
  us= string.gsub(us, "%s2", "\\squared ")
  us= string.gsub(us, "%s3", "\\cubed ")
  --- replace whitespaces at the end
  us= string.gsub(us, "%s$", "")
  return us
end

function handlePu(s)
  local inner = s:sub(5,-2) -- strip off \pu{ and }
  --- split at space:
  local p = string.find(inner, "%s")
  
  if not p then
    local result = "\\unit{" .. siparse(" "..inner) .. "}" -- adding a space in front to make unit replacements work
    return result
    --- todo: könnte auch eine reine Zahl oder reine Einheit sein! Prüfen...
--    io.stderr:write("Could not parse mhchem pu  formula " .. inner .. "\n")
--    return "\\text{Could not parse}"
  end
  -- Die zweite Hälfte ist die Einheit, muss geparst werden!
  local result = "\\qty{" .. string.gsub(string.sub(inner,0,p), "%s$", "") .. "}{" .. siparse(string.sub(inner,p,-1)) .. "}"
  ---if not result then
  --  io.stderr:write("Could not parse mhchem formula " .. inner .. "\n")
  --  return "\\text{Could not parse}"
  --end
  return result
end

function RawInline(el)
  if (el.format == "latex" or el.format == "tex") and
    el.text:match("\\pu{") then
    local result = handlePu(el.text)
    if result then
      return pandoc.Math("InlineMath", handlePu(el.text))
    end
  end
end

function RawBlock(el)
    local il = RawInline(el)
    if il then
      return pandoc.Para(il)
     end
  end
  
function Math(el)
    el.text = pandoc.Math("InlineMath", string.gsub(el.text, "(\\pu%b{})", handlePu))
   return el.text
end
