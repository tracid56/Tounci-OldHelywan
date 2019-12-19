-- ====================================================================================================================
-- Local function
-- ====================================================================================================================
function OpenShopMenu()
  ESX.UI.Menu.CloseAll()

  local elements = {
    { 
      label = _U('yusuf') .. ' : [' .. Config.Price['yusuf'] .. '$]',
      value = { name = 'yusuf',    price = Config.Price['yusuf'] } 
    },
	{
	  label = _U('grip') .. ' : [' .. Config.Price['grip'] .. '$]',
	  value = { name = 'grip',    price = Config.Price['grip'] }
	},
    { 
      label = _U('flashlight') .. ' : [' .. Config.Price['flashlight'] .. '$]',
      value = { name = 'flashlight', price = Config.Price['flashlight'] }
    },
	{ 
      label = _U('silencieux') .. ' : [' .. Config.Price['silencieux'] .. '$]',
      value = { name = 'silencieux',    price = Config.Price['silencieux'] } 
    },
	{ 
      label = _U('bulletproof') .. ' : [' .. Config.Price['bulletproof'] .. '$]',
      value = { name = 'bulletproof',    price = Config.Price['bulletproof'] } 
    },
	{ 
      label = _U('cagoule') .. ' : [' .. Config.Price['cagoule'] .. '$]',
      value = { name = 'cagoule',    price = Config.Price['cagoule'] } 
    },
	{ 
      label = _U('clip') .. ' : [' .. Config.Price['clip'] .. '$]',
      value = { name = 'clip',    price = Config.Price['clip'] } 
    }
  }

  ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop', {
      css =  'ammu',
	  title    = _U('accessstore'),
      align    = 'top-left',
      elements = elements
    }, function(data, menu)
      local element = data.current.value

      ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop_confirm', {
          css =  'valider',
		  title = _U('valid_this_purchase'),
          align = 'top-left',
          elements = {
            { label = _U('yes'), value = 'yes' },
            { label = _U('no'),  value = 'no'  }
          }
        }, function(data2, menu2)
          if data2.current.value == 'yes' then
            TriggerServerEvent('weapon_accesories:buyItem', element.name, element.price)
          end
          
          menu2.close()
          setCurrentAction('weapon_accesories_shop', _U('press_menu'), {})
        end, function(data2, menu2)
          menu2.close()
        end
      )

    end, function(data, menu)
      menu.close()
    end
  )

end