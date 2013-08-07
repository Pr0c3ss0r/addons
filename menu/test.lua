_addon = {}
_addon.name = 'test'
_addon.version = '1.0'

require 'menu'

MenuOption = {
        [0]='blah test01',
	[1]='blah test02',
	[2]='blah test03',
	[3]='blah test04',
	[4]='blah test05',
	[5]='blah test06',
	[6]='blah test07',
	[7]='Blah blah test08',
	[8]='Blah blah test09',
	[9]='Blah blah test10',
	[10]='Blah blah test11',
	[11]='Blah blah test12'}

MenuOption2 = {
	[0]='test1',
	[1]='test2'}

MenuOption3 = {
	[0]='t1',
	[1]='t2',
	[2]='t3',
	[3]='t4',
	[4]='t5',
	[5]='t6',
	[6]='t7',
	[7]='t8',
	[8]='t9'}

MenuOption4 = {}
MenuOption4 = {
	[0] = {['My_subKey']='1 @@@@@@@@@@@@@@@@@2@@@@@@@@@@@@@@@@@@@ 1'},
	[1] = {['My_subKey']='2 .......1@@@@@@@@@3@@@@@@@@@@@@@@@@@@@ 2'},
	[2] = {['My_subKey']='3 .......2@@@@@@@@@4@@@@@@@@@@@@@@@@@@@ 3'},
	[3] = {['My_subKey']='4 @@@@@@@3@@@@@@@@@5@@@@@@@@@@@@@@@@@@@ 4'},
	[4] = {['My_subKey']='5 @@@@@@@4@@@@@@@@@6@@@@@@@@@@@@@@@@@@@ 5'},
	[5] = {['My_subKey']='6 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 6'},
	[6] = {['My_subKey']='7 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 7'},
	[7] = {['My_subKey']='8 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 8'},
	[8] = {['My_subKey']='9 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 9'}}

function event_load()

   -- CreateMenu(Menu_name, Caption, Menu_Option_List, x, y, Max_Line_Show, sub_key)

   Menu1 = CreateMenu("testing1", "Just for the fun of testing", MenuOption, 100, 100, 5)
   Menu1['on_load'] = function (this)
      write('Menu ['..this.Menu_Name..'] on_load trigger')
   end

   Menu1['on_dbl_click'] = function (this, index, val)
      write('Menu ['..this.Menu_Name..'] dbl_click ['..index..'] ('..val..')')
   end
   Menu1['on_close'] = function (this)
      write('Menu ['..this.Menu_Name..'] close')
      write('  ** as test: we moving the menu position to(400, 0)')
      write('  **          and we cancel the close event with "return = true"')
      this.move(800, 0)
      return true 
   end
   Menu1['on_move'] = function (this, x, y)
      write('Menu_event_move ['..this.Menu_Name..'] X='..x..' Y='..y)
   end
   Menu1['on_click'] = function (this, index, val)
      write('Menu ['..this.Menu_Name..'] click ['..index..'] ('..val..')')
   end

   Menu2 = CreateMenu("testing2", "test2", MenuOption2, 200, 200, 5)
   Menu2 = menu_combine(Menu2, {
      on_load = function (this)
         write('Menu ['..this.Menu_Name..'] on_load trigger')
      end,

      on_dbl_click = function (this, index, val)
         write('Menu ['..this.Menu_Name..'] dbl_click ['..index..'] ('..val..')')
      end,

      on_close = function (this)
         write('Menu ['..this.Menu_Name..'] close')
      end,

      on_click = function (this, index, val)
         write('Menu ['..this.Menu_Name..'] click ['..index..'] ('..val..')')
      end,

      on_move = function (this, x, y)
         write('Menu_event_move ['..this.Menu_Name..'] X='..x..' Y='..y)
      end
   })

   Menu3 = CreateMenu("testing3", "test3", MenuOption3, 300, 300, 5)
   Menu3 = menu_combine(Menu3, {
      on_load = function (this)
         write('Menu ['..this.Menu_Name..'] on_load trigger')
      end,

      on_dbl_click = function (this, index, val)
         write('Menu ['..this.Menu_Name..'] dbl_click ['..index..'] ('..val..')')
      end,

      on_close = function (this)
         write('Menu ['..this.Menu_Name..'] close')
      end,

      on_click = function (this, index, val)
         write('Menu ['..this.Menu_Name..'] click ['..index..'] ('..val..')')
      end,

      on_move = function (this, x, y)
         write('Menu_event_move ['..this.Menu_Name..'] X='..x..' Y='..y)
      end
   })

   Menu4 = CreateMenu("testing4", "test4", MenuOption4, 500, 300, 5, 'My_subKey')
   Menu4 = menu_combine(Menu4, {
      on_load = function (this)
         write('Menu ['..this.Menu_Name..'] on_load trigger')
      end,

      on_dbl_click = function (this, index, val)
         write('Menu ['..this.Menu_Name..'] dbl_click ['..index..'] ('..val..')')
      end,

      on_close = function (this)
         write('Menu ['..this.Menu_Name..'] close')
      end,

      on_click = function (this, index, val)
         write('Menu ['..this.Menu_Name..'] click ['..index..'] ('..val..')')
      end,

      on_move = function (this, x, y)
         write('Menu_event_move ['..this.Menu_Name..'] X='..x..' Y='..y)
      end
   })

end