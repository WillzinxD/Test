macro(300, "Regen", function()
 if hppercent() <= 95 then
  say('Big Regeneration')
 end
end)

	if type(storage.defe) ~= 'number' or storage.defe - 60600 > now then
      storage.defe = 0
end 
onTalk(function(n, l, m, t)
    if n ~= player:getName() then return end
    if t:lower():find('kawarimi no jutsu') then
        storage.defe = now + 60600
    end
end)

macro(100, "Kawarimi",  function()
	if storage.defe >= now then return end
	if hppercent() <= 40 then
		return say('kawarimi no jutsu')
	end
	end)
	
	if type(storage.defeb) ~= 'number' or storage.defeb - 60600 > now then
      storage.defeb = 0
end 
onTalk(function(n, l, m, t)
    if n ~= player:getName() then return end
    if t:lower():find('body flicker technique') then
        storage.defeb = now + 60600
    end
end)

macro(100, "Shisui Fuga",  function()
	if storage.defeb >= now then return end
	if hppercent() <= 55 then
		return say('Body Flicker Technique')
	end
	end)
	
	if type(storage.pot) ~= 'number' or storage.pot - 1250 > now then
      storage.pot = 0
end 
onTalk(function(n, l, m, t)
    if n ~= player:getName() then return end
    if t:lower():find('Glup Glup..') then
        storage.pot = now + 1250
    end
end)
	
macro(1, 'Potion', function()
	if storage.pot >= now then return end
	if hppercent() <= 90 then
		return useWith(9447, player)
	end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'susano' then
        lastCast.Buff =  now + 60500
    end
end)

macro(200, "Buff Itachi", function()
  if isInPz() then return end
  if not lastCast.Buff or lastCast.Buff < now then
     return say('susano')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'kekkei genkai' then
        lastCast.Bufff =  now + 60500
    end
end)

macro(200, "Kekkei Genkai", function()
  if isInPz() then return end
  if not lastCast.Bufff or lastCast.Bufff < now then
     return say('Kekkei Genkai')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'komu no suizetsusan' then
        lastCast.Buffffc =  now + 60500
    end
end)

macro(200, "Buff Mei", function()
  if isInPz() then return end
  if not lastCast.Buffffc or lastCast.Buffffc < now then
     return say('Komu no Suizetsusan')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'raiton:yoroi' then
        lastCast.Buffffz =  now + 60500
    end
end)

macro(200, "Buff Bee", function()
  if isInPz() then return end
  if not lastCast.Buffffz or lastCast.Buffffz < now then
     return say('Raiton:Yoroi')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'raiton:flash' then
        lastCast.Buffffx =  now + 60500
    end
end)

macro(200, "Buff Raikage", function()
  if isInPz() then return end
  if not lastCast.Buffffx or lastCast.Buffffx < now then
     return say('Raiton:Flash')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'yellow flash' then
        lastCast.Buffffn =  now + 60500
    end
end)

macro(200, "Buff Minato", function()
  if isInPz() then return end
  if not lastCast.Buffffn or lastCast.Buffffn < now then
     return say('yellow Flash')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'shoton:shishou tenketsu' then
        lastCast.Buffff =  now + 60500
    end
end)

macro(200, "Buff Guren", function()
  if isInPz() then return end
  if not lastCast.Buffff or lastCast.Buffff < now then
     return say('Shoton:Shishou Tenketsu')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'byakugo no jutsu' then
        lastCast.Buffffh =  now + 90500
    end
end)

macro(200, "Byakugo", function()
  if isInPz() then return end
  if not lastCast.Buffffh or lastCast.Buffffh < now then
     return say('Byakugo No Jutsu')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'shanaro' then
        lastCast.Buffm =  now + 60500
    end
end)

macro(200, "Buff Sakura", function()
  if isInPz() then return end
  if not lastCast.Buffm or lastCast.Buffm < now then
     return say('shanaro')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'rikudo chakura saisei' then
        lastCast.Buffff =  now + 70500
    end
end)

macro(200, "Naruto3", function()
  if isInPz() then return end
  if not lastCast.Buffff or lastCast.Buffff < now then
     return say('Rikudo Chakura Saisei')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'kyuubi furie' then
        lastCast.Buff =  now + 60500
    end
end)

macro(200, "Buff", function()
  if isInPz() then return end
  if not lastCast.Buff or lastCast.Buff < now then
     return say('kyuubi furie')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'kurama chakura tenso' then
        lastCast.Buffg =  now + 60500
    end
end)

macro(200, "Buff Two", function()
  if isInPz() then return end
  if not lastCast.Buffg or lastCast.Buffg < now then
     return say('Kurama Chakura Tenso')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'hachimon tonkou' then
        lastCast.Buffff =  now + 90500
    end
end)

macro(200, "Hachimon", function()
  if isInPz() then return end
  if not lastCast.Buffff or lastCast.Buffff < now then
     return say('Hachimon Tonkou ')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'shoton:shishou tenketsu' then
        lastCast.Buffff =  now + 60500
    end
end)

macro(200, "Buff Guren", function()
  if isInPz() then return end
  if not lastCast.Buffff or lastCast.Buffff < now then
     return say('Shoton:Shishou Tenketsu')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'tomogoroshi' then
        lastCast.Buff =  now + 60500
    end
end)

macro(200, "Buff Kaguya", function()
  if isInPz() then return end
  if not lastCast.Buff or lastCast.Buff < now then
     return say('Tomogoroshi')
  end
end)

local lastCast = {}
onTalk(function(name, level, mode, text)
    if name ~= player:getName() then return end

    text = text:lower()
    if text == 'kanchi no jutsu' then
        lastCast.Buffff =  now + 60500
    end
end)

macro(200, "Buff Muu", function()
  if isInPz() then return end
  if not lastCast.Buffff or lastCast.Buffff < now then
     return say('Kanchi no Jutsu')
  end
end)
