include "autorun/client/Director.lua"

Director_Music( "MUS_ARelentlessEnemy", "Music/ARelentlessEnemy.wav" )

DIRECTOR_MUSIC_TABLE[ DIRECTOR_THREAT_MAGIC ].ComplicatedSituation = {
	Execute = function( self )
		// Stop us when muted because it sounds cooler that way
		if self.m_flVolume <= 0 then self.tHandles.Main = nil return end
		if !self.tHandles.Main then Director_Music_Play( self, "Main", "MUS_ARelentlessEnemy" ) end
	end
}
