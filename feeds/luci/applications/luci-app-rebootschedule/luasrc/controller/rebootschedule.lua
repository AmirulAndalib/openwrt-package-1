module("luci.controller.rebootschedule", package.seeall)
function index()
	if not nixio.fs.access("/etc/config/rebootschedule") then
		return
	end
	
	entry({"admin", "services"}, firstchild(), "Control", 44).dependent = false
	entry({"admin", "services", "rebootschedule"}, cbi("rebootschedule"), "定时设置", 20).dependent = true
end



