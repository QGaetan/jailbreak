--
-- @Project: Onset Minigames
-- @Author: Samuelds
-- @License: GNU General Public License v3.0
-- @Source: https://github.com/Onset-minigames
--

--[[ Weapon
	- 1
	- 2
	- 3
	- 6
	- 7
	- 8
	- 10
	- 20
	- 21

--]]

AddEvent("OnPackageStart", function()

	local Weapon = GetWeaponIdentifier():NewWeapon(1)
	Weapon:SetWeaponType(0)
	Weapon:SetWeaponSubType(0)
	Weapon:SetWeaponModel(nil)
	Weapon:SetStaticWeaponModel(nil)
	Weapon:SetMeshScale(FVector(1.000000, 1.000000, 1.000000))
	Weapon:SetEquipTime(0.0)
	Weapon:SetUnequipTime(0.0)
	Weapon:SetAimWalkSpeed(170.0)
	Weapon:SetCameraAimTargetOffset(FVector(100.000000, 40.000000, 10.000000))
	Weapon:SetCameraAimFoV(80.0)
	Weapon:SetAimBlendTime(0.35)
	Weapon:SetRange(50.0)
	Weapon:SetRecoil(0.0)
	Weapon:SetCameraShake(0.0)
	Weapon:SetCameraShakeCrouching(0.0)
	Weapon:SetSpreadMin(0.0)
	Weapon:SetSpreadMax(0.0)
	Weapon:SetSpreadMovementModifier(0.0)
	Weapon:SetSpreadCrouchingModifier(0.0)
	Weapon:SetRateOfFire(120.0)
	Weapon:SetMagazineModel(nil)
	Weapon:SetMagazineSize(0)
	Weapon:SetMagazineDropTime(0.0)
	Weapon:SetScope(false)
	Weapon:SetShotSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZFist_Cue"))
	Weapon:SetShotAnimation(nil)
	Weapon:SetShotAnimationTime(0.32)
	Weapon:SetMuzzleFlash(nil)
	Weapon:SetShellDelay(0.0)
	Weapon:SetProjectileShell(nil)
	Weapon:SetShellSmoke(nil)
	Weapon:SetAttachmentLocationModifier(FVector(0.000000, 0.000000, 0.000000))
	Weapon:SetAttachmentRotationModifier(FRotator(0.000000, 0.000000, 0.000000))
	Weapon:SetReloadAnimation(nil)
	Weapon:SetReloadAnimationTime(0.0)
	Weapon:SetCharacterReloadAnimation(nil)
	Weapon:SetLeftHandIKLocation(FVector(0.000000, 0.000000, 0.000000))
	Weapon:SetLeftHandARIdleIKLocation(FVector(0.000000, 0.000000, 0.000000))
	Weapon:SetLeftHandARIdleIKLocationCrouching(FVector(0.000000, 0.000000, 0.000000))
	Weapon:SetHUDImage(UTexture2D.LoadFromAsset("/Game/Weapons/Images/T_Fist"))
	Weapon:SetAllowAimWhileCrouching(false)
	Weapon:SetZoomInSound(nil)
	Weapon:SetZoomOutSound(nil)
	Weapon:SetEquipSound(nil)
	Weapon:SetUnequipSound(nil)
	Weapon:SetReloadStartSound(nil)
	Weapon:SetReloadEndSound(nil)
	Weapon:SetNoAmmoSound(nil)
	GetWeaponIdentifier():RegisterWeapon(Weapon)

	Weapon = GetWeaponIdentifier():NewWeapon(2)
	Weapon:SetWeaponType(1)
	Weapon:SetWeaponSubType(1)
	Weapon:SetWeaponModel(USkeletalMesh.LoadFromAsset("/Game/Weapons/Meshes/Pistol01/SK_Pistol01"))
	Weapon:SetStaticWeaponModel(UStaticMesh.LoadFromAsset("/Game/Weapons/Meshes/Pistol01/SM_Pistol01"))
	Weapon:SetMeshScale(FVector(1.000000, 1.000000, 1.000000))
	Weapon:SetEquipTime(0.23)
	Weapon:SetUnequipTime(0.45)
	Weapon:SetAimWalkSpeed(170.0)
	Weapon:SetCameraAimTargetOffset(FVector(170.000000, 65.000000, 14.000000))
	Weapon:SetCameraAimFoV(65.0)
	Weapon:SetAimBlendTime(0.35)
	Weapon:SetRange(6500.0)
	Weapon:SetRecoil(0.3)
	Weapon:SetCameraShake(1.0)
	Weapon:SetCameraShakeCrouching(0.5)
	Weapon:SetSpreadMin(0.1)
	Weapon:SetSpreadMax(2.0)
	Weapon:SetSpreadMovementModifier(0.2)
	Weapon:SetSpreadCrouchingModifier(-0.3)
	Weapon:SetRateOfFire(90.0)
	Weapon:SetMagazineModel(UStaticMesh.LoadFromAsset("/Game/Weapons/Meshes/Pistol01/SM_Pistol01_Mag"))
	Weapon:SetMagazineSize(8)
	Weapon:SetMagazineDropTime(0.32)
	Weapon:SetScope(false)
	Weapon:SetShotSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZPistol01_Cue"))
	Weapon:SetShotAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_Pistol01_Fire"))
	Weapon:SetShotAnimationTime(0.3)
	Weapon:SetMuzzleFlash(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Weapons/PS_Pistol01"))
	Weapon:SetShellDelay(0.0)
	Weapon:SetProjectileShell(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Shells/P_Shell"))
	Weapon:SetShellSmoke(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Impacts/Particles/P_ShellSmoke"))
	Weapon:SetAttachmentLocationModifier(FVector(-8.640888, 3.386111, 2.424174))
	Weapon:SetAttachmentRotationModifier(FRotator(10.565318, 86.711197, 10.886045))
	Weapon:SetReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_Pistol01_Reload"))
	Weapon:SetReloadAnimationTime(0.96)
	Weapon:SetCharacterReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Character/Animations/Handgun/A_HG_Reload"))
	Weapon:SetLeftHandIKLocation(FVector(-2.000000, 8.000000, -5.000000))
	Weapon:SetLeftHandARIdleIKLocation(FVector(0.000000, 0.000000, 0.000000))
	Weapon:SetLeftHandARIdleIKLocationCrouching(FVector(0.000000, 0.000000, 0.000000))
	Weapon:SetHUDImage(UTexture2D.LoadFromAsset("/Game/Weapons/Images/T_Pistol01"))
	Weapon:SetAllowAimWhileCrouching(true)
	Weapon:SetZoomInSound(nil)
	Weapon:SetZoomOutSound(nil)
	Weapon:SetEquipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/Equip_Fabric_1_A_Cue"))
	Weapon:SetUnequipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/UnEquip_Fabric_1_A_Cue1"))
	Weapon:SetReloadStartSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZRemoveMag_Cue"))
	Weapon:SetReloadEndSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZInsertMag_Cue"))
	Weapon:SetNoAmmoSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZEmptyMag_Cue"))
	GetWeaponIdentifier():RegisterWeapon(Weapon)

	Weapon = GetWeaponIdentifier():NewWeapon(3)
	Weapon:SetWeaponType(1)
	Weapon:SetWeaponSubType(1)
	Weapon:SetWeaponModel(USkeletalMesh.LoadFromAsset("/Game/Weapons/Meshes/Pistol02/SK_Pistol02"))
	Weapon:SetStaticWeaponModel(UStaticMesh.LoadFromAsset("/Game/Weapons/Meshes/Pistol02/SM_Pistol02"))
	Weapon:SetMeshScale(FVector(1.100000, 1.100000, 1.100000))
	Weapon:SetEquipTime(0.23)
	Weapon:SetUnequipTime(0.45)
	Weapon:SetAimWalkSpeed(170.0)
	Weapon:SetCameraAimTargetOffset(FVector(170.000000, 65.000000, 14.000000))
	Weapon:SetCameraAimFoV(65.0)
	Weapon:SetAimBlendTime(0.35)
	Weapon:SetRange(7100.0)
	Weapon:SetRecoil(0.3)
	Weapon:SetCameraShake(1.0)
	Weapon:SetCameraShakeCrouching(0.5)
	Weapon:SetSpreadMin(0.1)
	Weapon:SetSpreadMax(2.0)
	Weapon:SetSpreadMovementModifier(0.2)
	Weapon:SetSpreadCrouchingModifier(-0.3)
	Weapon:SetRateOfFire(130.0)
	Weapon:SetMagazineModel(UStaticMesh.LoadFromAsset("/Game/Weapons/Meshes/Pistol02/SM_Pistol02_Mag"))
	Weapon:SetMagazineSize(10)
	Weapon:SetMagazineDropTime(0.32)
	Weapon:SetScope(false)
	Weapon:SetShotSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZPistol02_Cue"))
	Weapon:SetShotAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_Pistol_Fire"))
	Weapon:SetShotAnimationTime(0.3)
	Weapon:SetMuzzleFlash(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Weapons/PS_Pistol"))
	Weapon:SetShellDelay(0.0)
	Weapon:SetProjectileShell(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Shells/P_Shell"))
	Weapon:SetShellSmoke(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Impacts/Particles/P_ShellSmoke"))
	Weapon:SetAttachmentLocationModifier(FVector(-9.619288, 3.477018, 1.700000))
	Weapon:SetAttachmentRotationModifier(FRotator(10.565318, 86.711197, 10.886045))
	Weapon:SetReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_Pistol_Reload"))
	Weapon:SetReloadAnimationTime(0.96)
	Weapon:SetCharacterReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Character/Animations/Handgun/A_HG_Reload"))
	Weapon:SetLeftHandIKLocation(FVector(-2.000000, 8.000000, -5.000000))
	Weapon:SetLeftHandARIdleIKLocation(FVector(0.000000, 0.000000, 0.000000))
	Weapon:SetLeftHandARIdleIKLocationCrouching(FVector(0.000000, 0.000000, 0.000000))
	Weapon:SetHUDImage(UTexture2D.LoadFromAsset("/Game/Weapons/Images/T_Pistol02"))
	Weapon:SetAllowAimWhileCrouching(true)
	Weapon:SetZoomInSound(nil)
	Weapon:SetZoomOutSound(nil)
	Weapon:SetEquipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/Equip_Fabric_1_A_Cue"))
	Weapon:SetUnequipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/UnEquip_Fabric_1_A_Cue1"))
	Weapon:SetReloadStartSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZRemoveMag_Cue"))
	Weapon:SetReloadEndSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZInsertMag_Cue"))
	Weapon:SetNoAmmoSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZEmptyMag_Cue"))
	GetWeaponIdentifier():RegisterWeapon(Weapon)

	Weapon = GetWeaponIdentifier():NewWeapon(6)
	Weapon:SetWeaponType(2)
	Weapon:SetWeaponSubType(3)
	Weapon:SetWeaponModel(USkeletalMesh.LoadFromAsset("/Game/Weapons/Meshes/Shotgun01/SK_Shotgun01"))
	Weapon:SetStaticWeaponModel(UStaticMesh.LoadFromAsset("/Game/Weapons/Meshes/Shotgun01/SM_Shotgun01"))
	Weapon:SetMeshScale(FVector(1.000000, 1.000000, 1.000000))
	Weapon:SetEquipTime(0.66)
	Weapon:SetUnequipTime(0.66)
	Weapon:SetAimWalkSpeed(170.0)
	Weapon:SetCameraAimTargetOffset(FVector(170.000000, 65.000000, 14.000000))
	Weapon:SetCameraAimFoV(65.0)
	Weapon:SetAimBlendTime(0.35)
	Weapon:SetRange(3000.0)
	Weapon:SetRecoil(0.3)
	Weapon:SetCameraShake(1.0)
	Weapon:SetCameraShakeCrouching(0.5)
	Weapon:SetSpreadMin(1.0)
	Weapon:SetSpreadMax(2.5)
	Weapon:SetSpreadMovementModifier(0.2)
	Weapon:SetSpreadCrouchingModifier(-0.4)
	Weapon:SetRateOfFire(50.0)
	Weapon:SetMagazineModel(nil)
	Weapon:SetMagazineSize(12)
	Weapon:SetMagazineDropTime(0.53)
	Weapon:SetScope(false)
	Weapon:SetShotSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZShotgun01_Cue"))
	Weapon:SetShotAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_Shotgun01_Fire"))
	Weapon:SetShotAnimationTime(1.3)
	Weapon:SetMuzzleFlash(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Weapons/PS_Shotgun01"))
	Weapon:SetShellDelay(0.6)
	Weapon:SetProjectileShell(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Shells/P_SG_Shell"))
	Weapon:SetShellSmoke(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Impacts/Particles/P_ShellSmoke"))
	Weapon:SetAttachmentLocationModifier(FVector(-5.915855, 5.356018, -5.895868))
	Weapon:SetAttachmentRotationModifier(FRotator(10.565264, 87.000000, 12.500009))
	Weapon:SetReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_Shotgun01_Reload"))
	Weapon:SetReloadAnimationTime(3.5)
	Weapon:SetCharacterReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Character/Animations/Shotgun/A_SG_Reload"))
	Weapon:SetLeftHandIKLocation(FVector(-38.000000, 9.500000, -6.000000))
	Weapon:SetLeftHandARIdleIKLocation(FVector(-39.000000, 13.000000, 3.000000))
	Weapon:SetLeftHandARIdleIKLocationCrouching(FVector(0.000000, 0.000000, 0.000000))
	Weapon:SetHUDImage(UTexture2D.LoadFromAsset("/Game/Weapons/Images/T_Shotgun01"))
	Weapon:SetAllowAimWhileCrouching(true)
	Weapon:SetZoomInSound(nil)
	Weapon:SetZoomOutSound(nil)
	Weapon:SetEquipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/Equip_Fabric_1_A_Cue"))
	Weapon:SetUnequipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/UnEquip_Fabric_1_A_Cue1"))
	Weapon:SetReloadStartSound(nil)
	Weapon:SetReloadEndSound(nil)
	Weapon:SetNoAmmoSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZEmptyMag_Cue"))
	GetWeaponIdentifier():RegisterWeapon(Weapon)

	Weapon = GetWeaponIdentifier():NewWeapon(7)
	Weapon:SetWeaponType(2)
	Weapon:SetWeaponSubType(3)
	Weapon:SetWeaponModel(USkeletalMesh.LoadFromAsset("/Game/Weapons/Meshes/Shotgun02/SK_Shotgun02"))
	Weapon:SetStaticWeaponModel(UStaticMesh.LoadFromAsset("/Game/Weapons/Meshes/Shotgun02/SM_Shotgun02"))
	Weapon:SetMeshScale(FVector(1.000000, 1.000000, 1.000000))
	Weapon:SetEquipTime(0.66)
	Weapon:SetUnequipTime(0.66)
	Weapon:SetAimWalkSpeed(170.0)
	Weapon:SetCameraAimTargetOffset(FVector(170.000000, 65.000000, 14.000000))
	Weapon:SetCameraAimFoV(65.0)
	Weapon:SetAimBlendTime(0.35)
	Weapon:SetRange(3100.0)
	Weapon:SetRecoil(0.3)
	Weapon:SetCameraShake(1.0)
	Weapon:SetCameraShakeCrouching(0.5)
	Weapon:SetSpreadMin(1.0)
	Weapon:SetSpreadMax(2.5)
	Weapon:SetSpreadMovementModifier(0.2)
	Weapon:SetSpreadCrouchingModifier(-0.4)
	Weapon:SetRateOfFire(60.0)
	Weapon:SetMagazineModel(nil)
	Weapon:SetMagazineSize(10)
	Weapon:SetMagazineDropTime(0.53)
	Weapon:SetScope(false)
	Weapon:SetShotSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZShotgun02_Cue"))
	Weapon:SetShotAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_Shotgun02_Fire"))
	Weapon:SetShotAnimationTime(1.3)
	Weapon:SetMuzzleFlash(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Weapons/PS_Shotgun02"))
	Weapon:SetShellDelay(0.6)
	Weapon:SetProjectileShell(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Shells/P_SG_Shell"))
	Weapon:SetShellSmoke(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Impacts/Particles/P_ShellSmoke"))
	Weapon:SetAttachmentLocationModifier(FVector(-3.416316, 3.430033, 4.629849))
	Weapon:SetAttachmentRotationModifier(FRotator(10.565318, 86.711197, 10.886045))
	Weapon:SetReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_Shotgun02_Reload"))
	Weapon:SetReloadAnimationTime(3.5)
	Weapon:SetCharacterReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Character/Animations/Shotgun/A_SG_Reload"))
	Weapon:SetLeftHandIKLocation(FVector(-33.000000, 9.700000, -5.000000))
	Weapon:SetLeftHandARIdleIKLocation(FVector(-39.000000, 14.500000, 2.500000))
	Weapon:SetLeftHandARIdleIKLocationCrouching(FVector(0.000000, 0.000000, 0.000000))
	Weapon:SetHUDImage(UTexture2D.LoadFromAsset("/Game/Weapons/Images/T_Shotgun02"))
	Weapon:SetAllowAimWhileCrouching(true)
	Weapon:SetZoomInSound(nil)
	Weapon:SetZoomOutSound(nil)
	Weapon:SetEquipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/Equip_Fabric_1_A_Cue"))
	Weapon:SetUnequipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/UnEquip_Fabric_1_A_Cue1"))
	Weapon:SetReloadStartSound(nil)
	Weapon:SetReloadEndSound(nil)
	Weapon:SetNoAmmoSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZEmptyMag_Cue"))
	GetWeaponIdentifier():RegisterWeapon(Weapon)

	Weapon = GetWeaponIdentifier():NewWeapon(8)
	Weapon:SetWeaponType(2)
	Weapon:SetWeaponSubType(4)
	Weapon:SetWeaponModel(USkeletalMesh.LoadFromAsset("/Game/Weapons/Meshes/SMG01/SK_SMG01"))
	Weapon:SetStaticWeaponModel(UStaticMesh.LoadFromAsset("/Game/Weapons/Meshes/SMG01/SM_SMG01"))
	Weapon:SetMeshScale(FVector(1.000000, 1.000000, 1.000000))
	Weapon:SetEquipTime(0.66)
	Weapon:SetUnequipTime(0.66)
	Weapon:SetAimWalkSpeed(170.0)
	Weapon:SetCameraAimTargetOffset(FVector(170.000000, 65.000000, 14.000000))
	Weapon:SetCameraAimFoV(65.0)
	Weapon:SetAimBlendTime(0.35)
	Weapon:SetRange(7500.0)
	Weapon:SetRecoil(0.3)
	Weapon:SetCameraShake(1.0)
	Weapon:SetCameraShakeCrouching(0.5)
	Weapon:SetSpreadMin(0.1)
	Weapon:SetSpreadMax(2.0)
	Weapon:SetSpreadMovementModifier(0.2)
	Weapon:SetSpreadCrouchingModifier(-0.4)
	Weapon:SetRateOfFire(500.0)
	Weapon:SetMagazineModel(UStaticMesh.LoadFromAsset("/Game/Weapons/Meshes/SMG01/SM_SMG01_Mag"))
	Weapon:SetMagazineSize(40)
	Weapon:SetMagazineDropTime(0.53)
	Weapon:SetScope(false)
	Weapon:SetShotSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZSMG01_Cue"))
	Weapon:SetShotAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_SMG01_Fire"))
	Weapon:SetShotAnimationTime(0.3)
	Weapon:SetMuzzleFlash(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Weapons/PS_SMG01"))
	Weapon:SetShellDelay(0.0)
	Weapon:SetProjectileShell(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Shells/P_SM_Shell"))
	Weapon:SetShellSmoke(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Impacts/Particles/P_ShellSmoke"))
	Weapon:SetAttachmentLocationModifier(FVector(-7.966965, 3.240994, 1.650000))
	Weapon:SetAttachmentRotationModifier(FRotator(10.565318, 86.711197, 10.886045))
	Weapon:SetReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_SMG01_Reload"))
	Weapon:SetReloadAnimationTime(1.8)
	Weapon:SetCharacterReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Character/Animations/AssaultRifle/Reload/A_AR_Reload_SMG01"))
	Weapon:SetLeftHandIKLocation(FVector(-28.000000, 7.700000, -1.000000))
	Weapon:SetLeftHandARIdleIKLocation(FVector(-30.000000, 12.500000, 8.800000))
	Weapon:SetLeftHandARIdleIKLocationCrouching(FVector(-29.000000, 9.200000, 4.000000))
	Weapon:SetHUDImage(UTexture2D.LoadFromAsset("/Game/Weapons/Images/T_SMG01"))
	Weapon:SetAllowAimWhileCrouching(true)
	Weapon:SetZoomInSound(nil)
	Weapon:SetZoomOutSound(nil)
	Weapon:SetEquipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/Equip_Fabric_1_A_Cue"))
	Weapon:SetUnequipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/UnEquip_Fabric_1_A_Cue1"))
	Weapon:SetReloadStartSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZRemoveMag_Cue"))
	Weapon:SetReloadEndSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZInsertMag_Cue"))
	Weapon:SetNoAmmoSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZEmptyMag_Cue"))
	GetWeaponIdentifier():RegisterWeapon(Weapon)

	Weapon = GetWeaponIdentifier():NewWeapon(10)
	Weapon:SetWeaponType(2)
	Weapon:SetWeaponSubType(4)
	Weapon:SetWeaponModel(USkeletalMesh.LoadFromAsset("/Game/Weapons/Meshes/SMG03/SK_SMG03"))
	Weapon:SetStaticWeaponModel(UStaticMesh.LoadFromAsset("/Game/Weapons/Meshes/SMG03/SM_SMG03"))
	Weapon:SetMeshScale(FVector(1.000000, 1.000000, 1.000000))
	Weapon:SetEquipTime(0.66)
	Weapon:SetUnequipTime(0.66)
	Weapon:SetAimWalkSpeed(170.0)
	Weapon:SetCameraAimTargetOffset(FVector(170.000000, 65.000000, 14.000000))
	Weapon:SetCameraAimFoV(65.0)
	Weapon:SetAimBlendTime(0.35)
	Weapon:SetRange(9000.0)
	Weapon:SetRecoil(0.33)
	Weapon:SetCameraShake(1.0)
	Weapon:SetCameraShakeCrouching(0.5)
	Weapon:SetSpreadMin(0.1)
	Weapon:SetSpreadMax(1.5)
	Weapon:SetSpreadMovementModifier(0.2)
	Weapon:SetSpreadCrouchingModifier(-0.3)
	Weapon:SetRateOfFire(500.0)
	Weapon:SetMagazineModel(UStaticMesh.LoadFromAsset("/Game/Weapons/Meshes/SMG03/SM_SMG03_Mag"))
	Weapon:SetMagazineSize(35)
	Weapon:SetMagazineDropTime(0.53)
	Weapon:SetScope(false)
	Weapon:SetShotSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZRifle04_Cue"))
	Weapon:SetShotAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_SMG03_Fire"))
	Weapon:SetShotAnimationTime(0.3)
	Weapon:SetMuzzleFlash(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Weapons/PS_Rifle04"))
	Weapon:SetShellDelay(0.0)
	Weapon:SetProjectileShell(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Shells/P_SM_Shell"))
	Weapon:SetShellSmoke(nil)
	Weapon:SetAttachmentLocationModifier(FVector(-7.910569, 4.222422, 1.833357))
	Weapon:SetAttachmentRotationModifier(FRotator(10.565318, 86.711197, 10.886045))
	Weapon:SetReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_SMG03_Reload"))
	Weapon:SetReloadAnimationTime(1.8)
	Weapon:SetCharacterReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Character/Animations/AssaultRifle/Reload/A_AR_Reload_SMG03"))
	Weapon:SetLeftHandIKLocation(FVector(-29.000000, 8.500000, -1.000000))
	Weapon:SetLeftHandARIdleIKLocation(FVector(-29.000000, 12.700000, 5.500000))
	Weapon:SetLeftHandARIdleIKLocationCrouching(FVector(-29.000000, 9.200000, 4.000000))
	Weapon:SetHUDImage(UTexture2D.LoadFromAsset("/Game/Weapons/Images/T_SMG03"))
	Weapon:SetAllowAimWhileCrouching(true)
	Weapon:SetZoomInSound(nil)
	Weapon:SetZoomOutSound(nil)
	Weapon:SetEquipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/Equip_Fabric_1_A_Cue"))
	Weapon:SetUnequipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/UnEquip_Fabric_1_A_Cue1"))
	Weapon:SetReloadStartSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZRemoveMag_Cue"))
	Weapon:SetReloadEndSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZInsertMag_Cue"))
	Weapon:SetNoAmmoSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZEmptyMag_Cue"))
	GetWeaponIdentifier():RegisterWeapon(Weapon)

	Weapon = GetWeaponIdentifier():NewWeapon(20)
	Weapon:SetWeaponType(2)
	Weapon:SetWeaponSubType(4)
	Weapon:SetWeaponModel(USkeletalMesh.LoadFromAsset("/Game/Weapons/Meshes/Sniper/SK_Sniper"))
	Weapon:SetStaticWeaponModel(UStaticMesh.LoadFromAsset("/Game/Weapons/Meshes/Sniper/SM_Sniper"))
	Weapon:SetMeshScale(FVector(1.000000, 1.000000, 1.000000))
	Weapon:SetEquipTime(0.66)
	Weapon:SetUnequipTime(0.66)
	Weapon:SetAimWalkSpeed(170.0)
	Weapon:SetCameraAimTargetOffset(FVector(320.000000, 18.000000, 0.000000))
	Weapon:SetCameraAimFoV(72.0)
	Weapon:SetAimBlendTime(0.2)
	Weapon:SetRange(13000.0)
	Weapon:SetRecoil(0.4)
	Weapon:SetCameraShake(1.0)
	Weapon:SetCameraShakeCrouching(0.5)
	Weapon:SetSpreadMin(0.1)
	Weapon:SetSpreadMax(1.0)
	Weapon:SetSpreadMovementModifier(0.4)
	Weapon:SetSpreadCrouchingModifier(-0.2)
	Weapon:SetRateOfFire(60.0)
	Weapon:SetMagazineModel(UStaticMesh.LoadFromAsset("/Game/Weapons/Meshes/Sniper/SM_Sniper_Mag"))
	Weapon:SetMagazineSize(7)
	Weapon:SetMagazineDropTime(0.53)
	Weapon:SetScope(true)
	Weapon:SetShotSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZSniper01_Cue"))
	Weapon:SetShotAnimation(nil)
	Weapon:SetShotAnimationTime(0.3)
	Weapon:SetMuzzleFlash(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Weapons/PS_L96"))
	Weapon:SetShellDelay(0.0)
	Weapon:SetProjectileShell(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Shells/P_AR_Shell"))
	Weapon:SetShellSmoke(nil)
	Weapon:SetAttachmentLocationModifier(FVector(-7.115069, 4.898125, -2.028069))
	Weapon:SetAttachmentRotationModifier(FRotator(10.565318, 86.711197, 10.886045))
	Weapon:SetReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_Sniper_Reload"))
	Weapon:SetReloadAnimationTime(1.8)
	Weapon:SetCharacterReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Character/Animations/AssaultRifle/Reload/A_AR_Reload_Sniper"))
	Weapon:SetLeftHandIKLocation(FVector(-34.000000, 9.700000, -3.000000))
	Weapon:SetLeftHandARIdleIKLocation(FVector(-33.000000, 12.900000, 5.500000))
	Weapon:SetLeftHandARIdleIKLocationCrouching(FVector(-29.000000, 9.200000, 4.000000))
	Weapon:SetHUDImage(UTexture2D.LoadFromAsset("/Game/Weapons/Images/T_Sniper"))
	Weapon:SetAllowAimWhileCrouching(true)
	Weapon:SetZoomInSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZSniperZoomIn"))
	Weapon:SetZoomOutSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZSniperZoomOut"))
	Weapon:SetEquipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/Equip_Fabric_1_A_Cue"))
	Weapon:SetUnequipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/UnEquip_Fabric_1_A_Cue1"))
	Weapon:SetReloadStartSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZRemoveMag_Cue"))
	Weapon:SetReloadEndSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZInsertMag_Cue"))
	Weapon:SetNoAmmoSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZEmptyMag_Cue"))
	GetWeaponIdentifier():RegisterWeapon(Weapon)

	Weapon = GetWeaponIdentifier():NewWeapon(21)
	Weapon:SetWeaponType(1)
	Weapon:SetWeaponSubType(1)
	Weapon:SetWeaponModel(USkeletalMesh.LoadFromAsset("/Game/Weapons/Meshes/Taser/SK_Taser"))
	Weapon:SetStaticWeaponModel(UStaticMesh.LoadFromAsset("/Game/Weapons/Meshes/Taser/SM_Taser"))
	Weapon:SetMeshScale(FVector(1.000000, 1.000000, 1.000000))
	Weapon:SetEquipTime(0.23)
	Weapon:SetUnequipTime(0.45)
	Weapon:SetAimWalkSpeed(170.0)
	Weapon:SetCameraAimTargetOffset(FVector(170.000000, 65.000000, 14.000000))
	Weapon:SetCameraAimFoV(65.0)
	Weapon:SetAimBlendTime(0.35)
	Weapon:SetRange(2000.0)
	Weapon:SetRecoil(0.05)
	Weapon:SetCameraShake(0.2)
	Weapon:SetCameraShakeCrouching(0.1)
	Weapon:SetSpreadMin(0.1)
	Weapon:SetSpreadMax(1.0)
	Weapon:SetSpreadMovementModifier(0.2)
	Weapon:SetSpreadCrouchingModifier(-0.3)
	Weapon:SetRateOfFire(30.0)
	Weapon:SetMagazineModel(nil)
	Weapon:SetMagazineSize(1)
	Weapon:SetMagazineDropTime(0.32)
	Weapon:SetScope(false)
	Weapon:SetShotSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/S_Taser_Fire_Cue"))
	Weapon:SetShotAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_Taser_Fire"))
	Weapon:SetShotAnimationTime(0.5)
	Weapon:SetMuzzleFlash(UParticleSystem.LoadFromAsset("/Game/Weapons/VFX/Particles/Weapons/PS_Taser"))
	Weapon:SetShellDelay(0.0)
	Weapon:SetProjectileShell(nil)
	Weapon:SetShellSmoke(nil)
	Weapon:SetAttachmentLocationModifier(FVector(-8.188849, 3.999968, 1.158456))
	Weapon:SetAttachmentRotationModifier(FRotator(0.000014, 90.000183, 10.000026))
	Weapon:SetReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Weapons/Animations/A_Taser_Reload"))
	Weapon:SetReloadAnimationTime(1.9)
	Weapon:SetCharacterReloadAnimation(UAnimSequence.LoadFromAsset("/Game/Character/Animations/Handgun/A_Taser_Reload"))
	Weapon:SetLeftHandIKLocation(FVector(-2.000000, 8.000000, -5.000000))
	Weapon:SetLeftHandARIdleIKLocation(FVector(0.000000, 0.000000, 0.000000))
	Weapon:SetLeftHandARIdleIKLocationCrouching(FVector(0.000000, 0.000000, 0.000000))
	Weapon:SetHUDImage(UTexture2D.LoadFromAsset("/Game/Weapons/Images/T_Taser"))
	Weapon:SetAllowAimWhileCrouching(true)
	Weapon:SetZoomInSound(nil)
	Weapon:SetZoomOutSound(nil)
	Weapon:SetEquipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/Equip_Fabric_1_A_Cue"))
	Weapon:SetUnequipSound(USoundCue.LoadFromAsset("/Game/Character/Sounds/Holster/UnEquip_Fabric_1_A_Cue1"))
	Weapon:SetReloadStartSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZTaserReloadStart"))
	Weapon:SetReloadEndSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZTaserReloadEnd"))
	Weapon:SetNoAmmoSound(USoundCue.LoadFromAsset("/Game/Weapons/Sounds/Cues/HZEmptyTaser_Cue"))
	GetWeaponIdentifier():RegisterWeapon(Weapon)
	
end)

local HitSounds = {}
HitSounds["Player"] = "/Game/Character/Sounds/Cue/HZHitFlesh_Cue"
HitSounds["Vehicle"] = "/Game/Weapons/Sounds/Cues/Impacts/HZHitMetal_Cue"
HitSounds["Object"] = "/Game/Weapons/Sounds/Cues/Impacts/HZHitObject_Cue"
HitSounds["Water"] = "/Game/Weapons/Sounds/Cues/Impacts/HZHitWater_Cue"
HitSounds["Grass"] = "/Game/Weapons/Sounds/Cues/Impacts/HZHitGrass_Cue"
HitSounds["Ground"] = "/Game/Weapons/Sounds/Cues/Impacts/HZHitGround_Cue"
HitSounds["Asphalt"] = "/Game/Weapons/Sounds/Cues/Impacts/HZHitAsphalt_Cue"
HitSounds["Sand"] = "/Game/Weapons/Sounds/Cues/Impacts/HZHitSand_Cue"
HitSounds["Metal"] = "/Game/Weapons/Sounds/Cues/Impacts/HZHitMetalLight_Cue"
HitSounds["Glass"] = "/Game/Weapons/Sounds/Cues/Impacts/HZHitGlass_Cue"

local HitParticles = {}
HitParticles["Blood"] = "/Game/Weapons/VFX/Impacts/Particles/P_ImpactBlood"
HitParticles["BloodCloud"] = "/Game/Weapons/VFX/Impacts/Particles/P_ImpactBloodCloud"
HitParticles["Plaster"] = "/Game/Weapons/VFX/Impacts/Particles/P_ImpactPlaster"
HitParticles["Metal"] = "/Game/Weapons/VFX/Impacts/Particles/P_ImpactMetal"
HitParticles["Dirt"] = "/Game/Weapons/VFX/Impacts/Particles/P_ImpactDirt"
HitParticles["Water"] = "/Game/Weapons/VFX/Impacts/Particles/P_ImpactWater"

local HitDecals = {}
HitDecals["Plaster"] = "/Game/Weapons/Decals/Materials/MI_ConcreteDecals"
HitDecals["Metal"] = "/Game/Weapons/Decals/Materials/M_MetalDecals"

-- Event for playing weapon hit effects
function OnPlayWeaponHitEffects(PlayerId, Weapon, HitType, HitId, StartLocation, HitLocation, HitLocationRelative, HitNormal, HitResult)

	HitNormal = HitNormal:ToOrientationRotator()
	HitNormal.Roll = RandomFloat(-180.0, 180.0)
	
	if HitType == HIT_AIR then
	
	elseif HitType == HIT_PLAYER then
	
		-- Show some blood on the ground
		GetPlayerActor(HitId):PlayBloodDecalEffects()
	
		-- If the local player shot trigger the crosshair hitmarker
		if PlayerId == GetPlayerId() then	
			NotifyCrosshairHit()
		end
	
		local HitEffect = GetWorld():SpawnEmitterAttached(UParticleSystem.LoadFromAsset(HitParticles["Blood"]), HitResult:GetComponent(), "", HitLocationRelative, HitNormal, EAttachLocation.KeepRelativeOffset)
		HitEffect:SetRelativeScale3D(FVector(0.6, 0.6, 0.6))
		
		HitEffect = GetWorld():SpawnEmitterAttached(UParticleSystem.LoadFromAsset(HitParticles["BloodCloud"]), HitResult:GetComponent(), "", HitLocationRelative, HitNormal, EAttachLocation.KeepRelativeOffset)
		HitEffect:SetRelativeScale3D(FVector(0.2, 0.2, 0.2))
		
		GetWorld():SpawnSoundAttached(USoundCue.LoadFromAsset(HitSounds["Player"]), HitResult:GetComponent(), "", HitLocationRelative, EAttachLocation.KeepRelativeOffset)
		
	elseif HitType == HIT_VEHICLE then
		
		if Weapon:GetWeaponType() ~= 0 then
			local HitEffect = GetWorld():SpawnEmitterAttached(UParticleSystem.LoadFromAsset(HitParticles["Metal"]), HitResult:GetComponent(), "", HitLocationRelative, HitNormal, EAttachLocation.KeepRelativeOffset)
			HitEffect:SetWorldScale3D(FVector(0.5, 0.5, 0.5))
			
			GetWorld():SpawnDecalAttached(UMaterialInterface.LoadFromAsset(HitDecals["Metal"]), FVector(8.0, 28.0, 28.0), HitResult:GetComponent(), "", HitLocationRelative, HitNormal, 20.0, EAttachLocation.KeepRelativeOffset)
		end
		
		GetWorld():SpawnSoundAttached(USoundCue.LoadFromAsset(HitSounds["Vehicle"]), HitResult:GetComponent(), "", HitLocationRelative, EAttachLocation.KeepRelativeOffset)
		
	elseif HitType == HIT_OBJECT then
	
		local Sound
		if HitResult:GetPhysicalSurface() == EPhysicalSurface.SurfaceGlass then
			Sound = USoundCue.LoadFromAsset(HitSounds["Glass"])
		else
			Sound = USoundCue.LoadFromAsset(HitSounds["Object"])
		end
		
		if HitId ~= 0 then
			if Weapon:GetWeaponType() ~= 0 then
				local HitEffect = GetWorld():SpawnEmitterAttached(UParticleSystem.LoadFromAsset(HitParticles["Plaster"]), HitResult:GetComponent(), "", HitLocationRelative, HitNormal, EAttachLocation.KeepRelativeOffset)
				HitEffect:SetWorldScale3D(FVector(0.25, 0.25, 0.25))
				
				GetWorld():SpawnDecalAttached(UMaterialInterface.LoadFromAsset(HitDecals["Plaster"]), FVector(8.0, 28.0, 28.0), HitResult:GetComponent(), "", HitLocationRelative, HitNormal, 20.0, EAttachLocation.KeepRelativeOffset)
			end
			
			GetWorld():SpawnSoundAttached(Sound, HitResult:GetComponent(), "", HitLocationRelative, EAttachLocation.KeepRelativeOffset)
		else
			if Weapon:GetWeaponType() ~= 0 then
				local HitEffect = GetWorld():SpawnEmitterAtLocation(UParticleSystem.LoadFromAsset(HitParticles["Plaster"]), HitLocation, HitNormal, FVector(1.0, 1.0, 1.0))
				HitEffect:SetWorldScale3D(FVector(0.25, 0.25, 0.25))
				
				GetWorld():SpawnDecalAtLocation(UMaterialInterface.LoadFromAsset(HitDecals["Plaster"]), FVector(8.0, 28.0, 28.0), HitLocation, HitNormal, 20.0)
			end
			
			GetWorld():SpawnSoundAtLocation(Sound, HitLocation)
		end
	
	elseif HitType == HIT_NPC then
	
		-- Show some blood on the ground
		GetNPCActor(HitId):PlayBloodDecalEffects()
		
		if PlayerId == GetPlayerId() then	
			NotifyCrosshairHit()
		end
		
		local HitEffect = GetWorld():SpawnEmitterAttached(UParticleSystem.LoadFromAsset(HitParticles["Blood"]), HitResult:GetComponent(), "", HitLocationRelative, HitNormal, EAttachLocation.KeepRelativeOffset)
		HitEffect:SetRelativeScale3D(FVector(0.6, 0.6, 0.6))
		
		HitEffect = GetWorld():SpawnEmitterAttached(UParticleSystem.LoadFromAsset(HitParticles["BloodCloud"]), HitResult:GetComponent(), "", HitLocationRelative, HitNormal, EAttachLocation.KeepRelativeOffset)
		HitEffect:SetRelativeScale3D(FVector(0.2, 0.2, 0.2))
		
		GetWorld():SpawnSoundAttached(USoundCue.LoadFromAsset(HitSounds["Player"]), HitResult:GetComponent(), "", HitLocationRelative, EAttachLocation.KeepRelativeOffset)
	
	elseif HitType == HIT_LANDSCAPE then
	
		local HitEffect = GetWorld():SpawnEmitterAtLocation(UParticleSystem.LoadFromAsset(HitParticles["Dirt"]), HitLocation, HitNormal, FVector(1.0, 1.0, 1.0))
		HitEffect:SetWorldScale3D(FVector(0.45, 0.45, 0.1))
		
		local Sound
		local Surface = HitResult:GetPhysicalSurface()
		if Surface == EPhysicalSurface.SurfaceGrass then
			Sound = USoundCue.LoadFromAsset(HitSounds["Grass"])
		elseif Surface == EPhysicalSurface.SurfaceGround then
			Sound = USoundCue.LoadFromAsset(HitSounds["Ground"])
		elseif Surface == EPhysicalSurface.SurfaceAsphalt then
			Sound = USoundCue.LoadFromAsset(HitSounds["Asphalt"])
		elseif Surface == EPhysicalSurface.SurfaceSand then
			Sound = USoundCue.LoadFromAsset(HitSounds["Sand"])
		else
			Sound = USoundCue.LoadFromAsset(HitSounds["Ground"])
		end
		
		GetWorld():SpawnSoundAtLocation(Sound, HitLocation)
		
	elseif HitType == HIT_WATER then
	
		local HitEffect = GetWorld():SpawnEmitterAtLocation(UParticleSystem.LoadFromAsset(HitParticles["Water"]), HitLocation, HitNormal)
		HitEffect:SetWorldScale3D(FVector(0.3, 0.3, 0.3))
		
		GetWorld():SpawnSoundAtLocation(USoundCue.LoadFromAsset(HitSounds["Water"]), HitLocation, HitNormal)
		
	end
	
	local HitComponent = HitResult:GetComponent()
	if HitComponent:IsValid() and HitComponent:IsSimulatingPhysics() then
	
		local MassMultiplier = HitComponent:GetMass() * -100.0
		local Impulse = HitResult.Normal * FVector(MassMultiplier, MassMultiplier, MassMultiplier)
		HitComponent:AddImpulseAtLocation(Impulse, HitResult.Location)
		
	end
end
AddEvent("OnPlayWeaponHitEffects", OnPlayWeaponHitEffects)
