
// Project: fake-smail 
// Created: 2024-04-21

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "latih 1" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 60, 1 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

LoadImage(1,"poto.png")

CreateSprite(1, 1) // MEMBUAT SPRITE DARI GAMBAR 1, ID SPRITE = 1
SetSpriteScale(1, 0.2, 0.2)
SetSpriteSize(1, 200, 200) // SELAIN MENGGUNAKAN SCALE UKURAN SPRITE JUGA BISA DIRUBAH DENGAN SYNTAX

//Merubah posisi sprite supaya ke tengah
SetSpritePosition(1, (GetVirtualWidth() / 2) - (GetSpriteWidth(1)/ 2), (GetVirtualHeight() / 2) - (GetSpriteHeight(1)/ 2))

SetJoystickScreenPosition(200, 800, 20) // membuat joystick


do
	 x = GetJoystickX () * 50 
	 y = GetJoystickY () * 50 // MENGAMBIL NILAI JOYSTICK X
    
    
    SetSpritePosition(1, GetSpriteX(1) + x, GetSpriteY(1) + y)
    
    if(GetSpriteX(1) < 0)
		SetSpriteX(1, 0)
		endif
		
	if(GetSpriteX(1) > GetVirtualWidth() - GetSpriteWidth(1))
		SetSpriteX(1,  GetVirtualWidth() - GetSpriteWidth(1))
		endif	

    

    Print( ScreenFPS() )
    Sync()
loop
