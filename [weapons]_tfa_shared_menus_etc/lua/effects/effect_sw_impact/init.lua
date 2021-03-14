--[[
Server Name: ▌ Icefuse.net ▌ Imperial RP ▌ Custom ▌ !NEW! ▌
Server IP:   208.103.169.41:27017
File Path:   addons/[weapons]_tfa_shared_menus_etc/lua/effects/effect_sw_impact/init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

-- EFFECT.Duration			= 0.1;
-- EFFECT.Size				= 20;

-- local MaterialGlow		= Material( "effects/sw_laser_bit" );

-- function EFFECT:Init( data )

	-- self.Position = data:GetOrigin();
	-- self.Normal = data:GetNormal();
	-- self.LifeTime = self.Duration;

	-- local emitter = ParticleEmitter( self.Position );
	-- if( emitter ) then
		
		-- for i = 1, 20 do

			-- local particle = emitter:Add( "effects/sw_laser_bit", self.Position + self.Normal * 2 );
			-- particle:SetVelocity( ( self.Normal + VectorRand() * 0.75 ):GetNormal() * math.Rand( 75, 125 ) );
			-- particle:SetDieTime( math.Rand( 0.5, 1.25 ) );
			-- particle:SetStartAlpha( 255 );
			-- particle:SetEndAlpha( 0 );
			-- particle:SetStartSize( math.Rand( 4, 8 ) );
			-- particle:SetEndSize( 0 );
			-- particle:SetRoll( 0 );
			-- particle:SetGravity( Vector( 0, 0, -250 ) );
			-- particle:SetCollide( true );
			-- particle:SetBounce( 0.3 );
			-- particle:SetAirResistance( 5 );

		-- end
		-- emitter:Finish();
	-- end
	
-- end


-- function EFFECT:Think()
    -- if self:GetPos():Distance( LocalPlayer():EyePos() ) > 600 then return self.LifeTime > 0 end
	-- self.LifeTime = self.LifeTime - FrameTime();
	-- return self.LifeTime > 0;

-- end


-- function EFFECT:Render()

	-- local frac = math.max( 0, self.LifeTime / self.Duration );
	-- local rgb = 255 * frac;
	-- local color = Color( rgb, rgb, rgb, 255 );

	-- render.SetMaterial( MaterialGlow );
	-- render.DrawQuadEasy( self.Position + self.Normal, self.Normal, self.Size, self.Size, color );

-- end
