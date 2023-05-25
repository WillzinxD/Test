friendList = {'toei', 'ryan', 'marcelin carta rara', 'marcelo on disturbed', 'doce on disturbe', 'whoareyou', 'grievol imperador', 'fael on disturbed','Look At Lyze', 'Fael Odeio Baiak', 'Harald Finehair'}

enemyList = {'felipe', 'piriguete'}
for index, name in ipairs(friendList) do
    friendList[name:lower():trim()] = true
    friendList[index] = nil
end

for index, value in ipairs(enemyList) do
    enemyList[value:lower():trim()] = true
    enemyList[index] = nil
end

stopTime = 0;

onCreaturePositionChange(function(creature, newPos, oldPos)
    if not creature:isPlayer() then
        return
    end

    if not (oldPos and newPos) then
        return
    end

    newPos = newPos.x .. ',' .. newPos.y .. ',' .. newPos.z

    if newPos ~= creature.lastPos then
        creature.whiteList = nil
        creature.lastPos = newPos
    end
end)

macro(100, 'AT', function()
	if isInPz() then
		return
	end
    local pos = pos()
    local actualTarget
    for _, creature in ipairs(getSpectators(pos)) do
        local specHp = creature:getHealthPercent()
        local specPos = creature:getPosition()
        local specName = creature:getName():lower()
        if not creature.whiteList and creature:isPlayer() and specHp and specHp > 0 then
            if (not friendList[specName] and creature:getEmblem() ~= 1 and creature:getShield() < 3 and creature ~= player) or enemyList[specName] then
                if creature:canShoot() then
                    if not actualTarget or actualTargetHp > specHp or (actualTargetHp == specHp and getDistanceBetween(pos, actualTargetPos) > getDistanceBetween(specPos, pos)) then
                        actualTarget, actualTargetPos, actualTargetHp = creature, specPos, specHp
                    end
                end
            end
        end
    end
    if actualTarget and g_game.getAttackingCreature() ~= actualTarget then
        modules.game_interface.processMouseAction(nil, 2, pos, nil, actualTarget, actualTarget)
    end
end)

macro(100, 'ATP', function()
	if isInPz() then
		return
	end
    local pos = pos()
    local actualTarget
    for _, creature in ipairs(getSpectators(pos)) do
        local specHp = creature:getHealthPercent()
        local specPos = creature:getPosition()
        local specName = creature:getName():lower()
        if not creature.whiteList and creature:isPlayer() and specHp and specHp > 0 and creature:getSkull() ~= 0 then
            if (not friendList[specName] and creature:getEmblem() ~= 1 and creature:getShield() < 3 and creature ~= player) or enemyList[specName] then
                if creature:canShoot() then
                    if not actualTarget or actualTargetHp > specHp or (actualTargetHp == specHp and getDistanceBetween(pos, actualTargetPos) > getDistanceBetween(specPos, pos)) then
                        actualTarget, actualTargetPos, actualTargetHp = creature, specPos, specHp
                    end
                end
            end
        end
    end
    if actualTarget and g_game.getAttackingCreature() ~= actualTarget then
        modules.game_interface.processMouseAction(nil, 2, pos, nil, actualTarget, actualTarget)
    end
end)

macro(100, 'ATS', function()
	if isInPz() then
		return
	end
    local pos = pos()
    local actualTarget
    for _, creature in ipairs(getSpectators(pos)) do
        local specHp = creature:getHealthPercent()
        local specPos = creature:getPosition()
        local specName = creature:getName():lower()
        if not creature.whiteList and creature:isPlayer() and specHp and specHp > 0 and creature:getEmblem()  == 2 then
            if (not friendList[specName] and creature:getEmblem() ~= 1 and creature:getShield() < 3 and creature ~= player) or enemyList[specName] then
                if creature:canShoot() then
                    if not actualTarget or actualTargetHp > specHp or (actualTargetHp == specHp and getDistanceBetween(pos, actualTargetPos) > getDistanceBetween(specPos, pos)) then
                        actualTarget, actualTargetPos, actualTargetHp = creature, specPos, specHp
                    end
                end
            end
        end
    end
    if actualTarget and g_game.getAttackingCreature() ~= actualTarget then
        modules.game_interface.processMouseAction(nil, 2, pos, nil, actualTarget, actualTarget)
    end
end)

onTextMessage(function(mode, text)
	if text == 'You may not attack a person in a protection zone.' or text == 'You may not attack this player.' then
		local target = g_game.getAttackingCreature()
		if target then
			target.whiteList = true
		end
	end
end)