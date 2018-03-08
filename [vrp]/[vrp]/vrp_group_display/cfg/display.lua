
local cfg = {}

cfg.firstjob = "VAGABUNDO" -- set this to your first job, for example "citizen", or false to disable
cfg.showjob = true -- show job automatically with cfg.job css

-- job text display css
cfg.job = [[
.div_job{
  font-family: "Pricedown";
  position: absolute;
  top: 205px;
  right: 33px;
  font-size: 1.8em;
  color: white;
  text-shadow: 3px 3px 2px rgba(0, 0, 0, 0.80);
   -webkit-font-smoothing: antialiased
}
]]

-- list of ["group"] => {text = "", css = [[ .div_group{ } ]]} for extra specific css
cfg.group = {
  ["sheriff"] = {
    text = "", -- jobs just need the icon css
	css = [[
      .div_sheriff #icon{
        position: absolute;
        content: url(http://www.freeiconspng.com/uploads/gold-police-badge-icon-9.png);
        height: 30px;
        width: 30px;
        top: 186px;
        right: 120px;
      }
    ]], -- this is an example, add more under it using the same model, leave the } at the end.
  }, -- commas are impotant and so are { }
  ["[RANK] A - Group"] = { -- example using spaces ( spaces are not accepted in the css, notice how it removes every symbol but _ )
    text = "",
	css = [[
      .div_RANKAGroup #icon{
        position: absolute;
        content: url(http://www.freeiconspng.com/uploads/gold-police-badge-icon-9.png);
        height: 30px;
        width: 30px;
        top: 186px;
        right: 120px;
      }
    ]], -- this is an example, add more under it using the same model, leave the } at the end.
  },
  -- add more here
}
return cfg

