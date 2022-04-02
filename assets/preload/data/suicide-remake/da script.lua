function onUpdate(elapsed)
    setPropertyFromClass('ClientPrefs', 'downScroll', false)
    setPropertyFromClass('ClientPrefs', 'middleScroll', false)
    songPos = getSongPosition()
            local currentBeat = (songPos/5000)*(curBpm/40)
    
            noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - -15*math.sin((currentBeat+4*0.75)*math.pi), 0.5)
            noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 15 + 15*math.sin((currentBeat+8*0.75)*math.pi), 3)
            noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 10*math.sin((currentBeat+4*0.75)*math.pi), 0.5)
            noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 15 + 15*math.sin((currentBeat+8*0.75)*math.pi), 3)
    
            noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + -15*math.sin((currentBeat+4*0.75)*math.pi), 0.5)
            noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 15 - 15*math.sin((currentBeat+8*0.75)*math.pi), 3)
            noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 15*math.sin((currentBeat+4*0.75)*math.pi), 0.5)
            noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 15 - 15*math.sin((currentBeat+8*0.75)*math.pi), 3)
    end