_addon = {}
_addon.name = 'test'
_addon.version = '1.0'

require 'menu'

Menu_List1 = {
	sub="Oneiros Grip",
	rear="Cmd. Earring",
	main="Terra's Staff",
	neck="Twilight Torque",
	lring="Dark Ring",
	rring="Dark Ring",
	back="Shadow Mantle",
	legs="Crimson Cuisses",
	waist="Flume Belt",
	lear="Moonshade Earring",
	body="Bokwus Robe",
	head="Dls. Chapeau +2",
	feet="Estq. houseaux +2"}

Menu_List2 = {
	sub="Oneiros Grip",
	rear="Cmd. Earring",
	main="Terra's Staff",
	neck="Twilight Torque",
	lring="Dark Ring",
	rring="Dark Ring",
	back="Shadow Mantle",
	legs="Crimson Cuisses",
	waist="Flume Belt",
	lear="Moonshade Earring",
	body="Bokwus Robe",
	head="Dls. Chapeau +2",
	feet="Estq. houseaux +2"}
             
             

function event_load()
   Menu1 = CreateMenu("Menu1", "Just for the fun of testing", Menu_List1, 100, 100, 5)
   Menu1 = menu_combine(Menu1, {
      on_load = function (this)
         write('Menu ['..this.Menu_Name..'] on_load trigger')
      end,

      on_dbl_click = function (this, index, val)
         write('Menu ['..this.Menu_Name..'] dbl_click ['..index..'] Key = "'..this.key[index]..'" val = "'..val..'"')
      end,

      on_close = function (this)
         write('Menu ['..this.Menu_Name..'] close')
      end,

      on_click = function (this, index, val)
         write('Menu ['..this.Menu_Name..'] click ['..index..'] Key = "'..this.key[index]..'" val = "'..val..'"')
      end,

      on_move = function (this, x, y)
         write('Menu_event_move ['..this.Menu_Name..'] X='..x..' Y='..y)
      end
   })

   Menu2 = CreateMenu("Menu2", "Hybrid PDT Set", Menu_List2, 300, 300, 8)
   Menu2 = menu_combine(Menu2, {
      on_load = function (this)
         write('Menu ['..this.Menu_Name..'] on_load trigger')
      end,

      on_dbl_click = function (this, index, val)
         write('Menu ['..this.Menu_Name..'] dbl_click ['..index..'] Key = "'..this.key[index]..'" val = "'..val..'"')
      end,

      on_close = function (this)
         write('Menu ['..this.Menu_Name..'] close')
      end,

      on_click = function (this, index, val)
         write('Menu ['..this.Menu_Name..'] click ['..index..'] Key = "'..this.key[index]..'" val = "'..val..'"')
      end,

      on_move = function (this, x, y)
         write('Menu_event_move ['..this.Menu_Name..'] X='..x..' Y='..y)
      end
   })
end