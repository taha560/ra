local action = function(msg, matches)
local url , res = HTTP.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = ':clock3: ساعت '..jdat.FAtime..' \n:calendar: امروز '..jdat.FAdate..' میباشد\n\-n\n:clock3: '..jdat.ENtime..'\n:calendar: '..jdat.ENdate..'@developers_channel\nکپی بدون ذکر منبع شرعی و قانونی حرام است'
api.sendReply(msg,text,true)
end

local triggers = {
"!time"
}
return {
action = action,
triggers = triggers
}
