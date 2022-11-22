// SuperheroLandingOnCommandJump, Cyberpunk 2077 mod that improves Superhero Landing
// Copyright (C) 2022 BurgersMcFly

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

@replaceMethod(AirHoverDecisions)

  protected const func EnterCondition(const stateContext: ref<StateContext>, const scriptInterface: ref<StateGameScriptInterface>) -> Bool {
    let currentNumberOfJumps: Int32;
    let shouldFall: Bool = this.ShouldFall(stateContext, scriptInterface);
    let maxAllowedDistanceToGround: Float;
    let m_maxSuperheroFallHeight: Bool;
    maxAllowedDistanceToGround = this.GetStaticFloatParameterDefault("maxDistToGroundFromSuperheroFall", 20.00);
    if DefaultTransition.GetDistanceToGround(scriptInterface) >= maxAllowedDistanceToGround {
      m_maxSuperheroFallHeight = true;
    };
    if shouldFall {
      scriptInterface.GetAudioSystem().NotifyGameTone(n"StartFalling");
    };
    if !this.m_hasStatusEffect && !scriptInterface.IsActionJustPressed(n"Jump") && m_maxSuperheroFallHeight {
      return false;
    }
    else {
    currentNumberOfJumps = stateContext.GetIntParameter(n"currentNumberOfJumps", true);  
    if !this.m_hasStatusEffect && scriptInterface.IsActionJustPressed(n"Jump") && currentNumberOfJumps >= this.GetStaticIntParameterDefault("numberOfMultiJumps", 1) && !m_maxSuperheroFallHeight {
      return true;
    }
    }
    if DefaultTransition.IsHeavyWeaponEquipped(scriptInterface) {
      return false;
    };
    currentNumberOfJumps = stateContext.GetIntParameter(n"currentNumberOfJumps", true);
    if scriptInterface.IsActionJustPressed(n"Jump") && currentNumberOfJumps >= this.GetStaticIntParameterDefault("numberOfMultiJumps", 1) && !m_maxSuperheroFallHeight { 
      return true;
    };
    return false;
  };