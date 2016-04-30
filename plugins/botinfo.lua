do
    function run(msg, matches)
        
  local text = [[
سازنده : مهدی هکر
کانال ما : @pic4all
برای درخواست گروه با ایدی زیر هماهنگی کنید
@pic5all
]]
    return text
  end
end 

return {
  description = "about for bot.  ", 
  usage = {
    "Show bot about.",
  },
  patterns = {
    "^[!/]([Dd][Jj])$",
  }, 
  run = run,
}
