function PatchByteOptionsOoT() {
    
    # HERO MODE #

    if (IsText -Elem $Options.Damage -Text "OKHO Mode" -Enabled) {
        ChangeBytes -Offset "AE8073" -Values @("09", "04") -Interval 16
        ChangeBytes -Offset "AE8096" -Values @("82", "00")
        ChangeBytes -Offset "AE8099" -Values @("00", "00", "00")
    }
    elseif ( (IsText -Elem $Options.Damage -Text "1x Damage" -Enabled -Not) -or (IsText -Elem $Options.Recovery -Text "1x Recovery" -Enabled -Not) ) {
        ChangeBytes -Offset "AE8073" -Values @("09", "04") -Interval 16
        if (IsText -Elem $Options.Recovery -Text "1x Recovery" -Enabled) {                
            if (IsText -Elem $Options.Damage -Text "2x Damage" -Enabled)       { ChangeBytes -Offset "AE8096" -Values @("80", "40") }
            elseif (IsText -Elem $Options.Damage -Text "4x Damage" -Enabled)   { ChangeBytes -Offset "AE8096" -Values @("80", "80") }
            elseif (IsText -Elem $Options.Damage -Text "8x Damage" -Enabled)   { ChangeBytes -Offset "AE8096" -Values @("80", "C0") }
        ChangeBytes -Offset "AE8099" -Values @("00", "00", "00")
        }
        elseif (IsText -Elem $Options.Recovery -Text "1/2x Recovery" -Enabled) {               
            if (IsText -Elem $Options.Damage -Text "1x Damage" -Enabled)       { ChangeBytes -Offset "AE8096" -Values @("80", "40") }
            elseif (IsText -Elem $Options.Damage -Text "2x Damage" -Enabled)   { ChangeBytes -Offset "AE8096" -Values @("80", "80") }
            elseif (IsText -Elem $Options.Damage -Text "4x Damage" -Enabled)   { ChangeBytes -Offset "AE8096" -Values @("80", "C0") }
            elseif (IsText -Elem $Options.Damage -Text "8x Damage" -Enabled)   { ChangeBytes -Offset "AE8096" -Values @("81", "00") }
        ChangeBytes -Offset "AE8099" -Values @("10", "80", "43")
        }
        elseif (IsText -Elem $Options.Recovery -Text "1/2x Recovery" -Enabled) {                
            if (IsText -Elem $Options.Damage -Text "1x Damage" -Enabled)       { ChangeBytes -Offset "AE8096" -Values @("80", "80") }
            elseif (IsText -Elem $Options.Damage -Text "2x Damage" -Enabled)   { ChangeBytes -Offset "AE8096" -Values @("80", "C0") }
            elseif (IsText -Elem $Options.Damage -Text "4x Damage" -Enabled)   { ChangeBytes -Offset "AE8096" -Values @("81", "00") }
            elseif (IsText -Elem $Options.Damage -Text "8x Damage" -Enabled)   { ChangeBytes -Offset "AE8096" -Values @("81", "40") }
        ChangeBytes -Offset "AE8099" -Values @("10", "80", "83")

        }
        elseif (IsText -Elem $Options.Recovery -Text "1/2x Recovery" -Enabled) {                
            if (IsText -Elem $Options.Damage -Text "1x Damage" -Enabled)       { ChangeBytes -Offset "AE8096" -Values @("81", "40") }
            elseif (IsText -Elem $Options.Damage -Text "2x Damage" -Enabled)   { ChangeBytes -Offset "AE8096" -Values @("81", "80") }
            elseif (IsText -Elem $Options.Damage -Text "4x Damage" -Enabled)   { ChangeBytes -Offset "AE8096" -Values @("81", "C0") }
            elseif (IsText -Elem $Options.Damage -Text "8x Damage" -Enabled)   { ChangeBytes -Offset "AE8096" -Values @("82", "00") }
        ChangeBytes -Offset "AE8099" -Values @("10", "81", "43")
        }
    }

    <#
    if (IsText -Elem $Options.BossHP -Text "2x Boss HP" -Enabled) {
        ChangeBytes -Offset "C44F2B" -Values @("14") # Gohma           0xC44C30 -> 0xC4ABB0 (Length: 0x5F80) (ovl_Boss_Goma) (HP: 0A) (Mass: FF)

        ChangeBytes -Offset "C3B9FF" -Values @("18") # King Dodongo    0xC3B150 -> 0xC44C30 (Length: 0x9AE0) (ovl_Boss_Dodongo) (HP: 0C) (Mass: 00)

        # ChangeBytes -Offset "" -Values @("08") # Barinade            0xD22360 -> 0xD30B50 (Length: 0xE7F0)(ovl_Boss_Va) (HP: 04 -> 03 -> 03) (Mass: 00)
        # ChangeBytes -Offset "" -Values @("06") # Barinade        

        ChangeBytes -Offset "C91F8F" -Values @("3C") # Phantom Ganon   0xC91AD0 -> 0xC96840  (Length: 0x4D70) (ovl_Boss_Ganondrof) (HP: 1E -> 18) (Mass: 32)

        #ChangeBytes -Offset "C91B99" -Values @("1D") # Phantom Ganon 2A
        #ChangeBytes -Offset "C91C95" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C922C3" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C92399" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C9263F" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C9266B" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C92AE7" -Values @("1D") # Phantom Ganon

        #ChangeBytes -Offset "C91BE1" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C91C4B" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C91C91" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C91CCD" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C91D2D" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C91D8D" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C91E9B" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C91F83" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C9200B" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C920EB" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C92123" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C92177" -Values @("1D") # Phantom Ganon
        #ChangeBytes -Offset "C9219F" -Values @("1D") # Phantom Ganon


        ChangeBytes -Offset "CE6D2F" -Values @("30") # Volvagia        0xCE65F0 -> 0xCED920 (Length: 0x7330) (ovl_Boss_Fd) (Has HP) (HP: 18) (Mass: 32)
                                                         # Volvagia        0xD04790 -> 0xD084C0 (Length:0x3D30) (ovl_Boss_Fd2) (Has No HP, Forwards HP to Flying)

        ChangeBytes -Offset "D3B4A7" -Values @("28") # Morpha          0xD3ADF0 -> 0xD46390 (Length: 0xB5A0) (ovl_Boss_Mo) (HP: 14) (Mass: 00)

        # ChangeBytes -Offset "" -Values @("48") # Bongo Bongo         0xDA1660 -> 0xDADB80 (Length: 0xC520) (ovl_Boss_Sst) (HP: 24) (Mass: C8)

        # ChangeBytes -Offset "" -Values @("30") # Twinrova            0xD612E0 -> 0xD74360 (Length: 0x13080) (ovl_Boss_Tw) (HP: 18) (Mass: FF)

        # ChangeBytes -Offset "D7FDA3" -Values @("50") # Ganondorf     0xD7F3F0 -> 0xDA1660 (Length: 0x22270) (ovl_Boss_Ganon) (HP: 28) (Mass: 32)

        # ChangeBytes -Offset "" -Values @("3C") # Ganon               0xE826C0 -> 0xE939B0 (Length: 0x112F0) (ovl_Boss_Ganon2) (HP: 1E) (Mass: FF)
    }
    elseif (IsText -Elem $Options.BossHP -Text "3x Boss HP" -Enabled) {
        ChangeBytes -Offset "C44F2B" -Values @("1E") # Gohma           0xC44C30 -> 0xC4ABB0 (Length: 0x5F80) (ovl_Boss_Goma) (HP: 0A) (Mass: FF)

        ChangeBytes -Offset "C3B9FF" -Values @("24") # King Dodongo    0xC3B150 -> 0xC44C30 (Length: 0x9AE0) (ovl_Boss_Dodongo) (HP: 0C) (Mass: 00)

        # ChangeBytes -Offset "" -Values @("0C") # Barinade            0xD22360 -> 0xD30B50 (Length: 0xE7F0)(ovl_Boss_Va) (HP: 04 -> 03 -> 03) (Mass: 00)
        # ChangeBytes -Offset "" -Values @("09") # Barinade        

        ChangeBytes -Offset "C91F8F" -Values @("5A") # Phantom Ganon   0xC91AD0 -> 0xC96840  (Length: 0x4D70) (ovl_Boss_Ganondrof) (HP: 1E -> 18) (Mass: 32)

        ChangeBytes -Offset "CE6D2F" -Values @("48") # Volvagia        0xCE65F0 -> 0xCED920 (Length: 0x7330) (ovl_Boss_Fd) (Has HP) (HP: 18) (Mass: 32)
                                                         # Volvagia        0xD04790 -> 0xD084C0 (Length:0x3D30) (ovl_Boss_Fd2) (Has No HP, Forwards HP to Flying)

        ChangeBytes -Offset "D3B4A7" -Values @("3C") # Morpha          0xD3ADF0 -> 0xD46390 (Length: 0xB5A0) (ovl_Boss_Mo) (HP: 14) (Mass: 00)

        # ChangeBytes -Offset "" -Values @("6C") # Bongo Bongo         0xDA1660 -> 0xDADB80 (Length: 0xC520) (ovl_Boss_Sst) (HP: 24) (Mass: C8)

        # ChangeBytes -Offset "" -Values @("48") # Twinrova            0xD612E0 -> 0xD74360 (Length: 0x13080) (ovl_Boss_Tw) (HP: 18) (Mass: FF)

        # ChangeBytes -Offset "D7FDA3" -Values @("78") # Ganondorf     0xD7F3F0 -> 0xDA1660 (Length: 0x22270) (ovl_Boss_Ganon) (HP: 28) (Mass: 32)

        # ChangeBytes -Offset "" -Values @("5A") # Ganon               0xE826C0 -> 0xE939B0 (Length: 0x112F0) (ovl_Boss_Ganon2) (HP: 1E) (Mass: FF)
    }

    if (IsText -Elem $Options.MonsterHP -Text "2x Monster HP" -Enabled) {
        ChangeBytes -Offset "BFADC5" -Values("14") # Stalfos
    }
    elseif (IsText -Elem $Options.MonsterHP -Text "3x Monster HP" -Enabled) {
        ChangeBytes -Offset "BFADC5" -Values("1E") # Stalfos
    }
    #>



    # GRAPHICS #

    if (IsChecked -Elem $Options.WideScreen -Enabled)          { ChangeBytes -Offset "B08038" -Values @("3C", "07", "3F", "E3") }
    
    if (IsChecked -Elem $Options.WidescreenTextures -Enabled) {
        PatchBytes -Offset "28E7FB0" -Length "3A57" -Texture -Patch "Backgrounds\Bazaar.jpeg"
        PatchBytes -Offset "2DDB160" -Length "38B8" -Texture -Patch "Backgrounds\Bombchu Shop.jpeg"
        PatchBytes -Offset "2D339D0" -Length "3934" -Texture -Patch "Backgrounds\Goron Shop.jpeg"
        PatchBytes -Offset "2CD0DA0" -Length "37CF" -Texture -Patch "Backgrounds\Gravekeeper's Hut.jpeg"
        PatchBytes -Offset "3412E40" -Length "4549" -Texture -Patch "Backgrounds\Happy Mask Shop.jpeg"
        PatchBytes -Offset "2E30EF0" -Length "4313" -Texture -Patch "Backgrounds\Impa's House.jpeg"
        PatchBytes -Offset "300CD80" -Length "43AC" -Texture -Patch "Backgrounds\Kakariko House 3.jpeg"
        PatchBytes -Offset "2C8A7C0" -Length "31C6" -Texture -Patch "Backgrounds\Kakariko House.jpeg"
        PatchBytes -Offset "2D89660" -Length "3E49" -Texture -Patch "Backgrounds\Kakariko Potion Shop.jpeg"
        PatchBytes -Offset "268D430" -Length "5849" -Texture -Patch "Backgrounds\Kokiri Know-It-All-Brothers' House.jpeg"
        PatchBytes -Offset "2592490" -Length "410F" -Texture -Patch "Backgrounds\Kokiri Shop.jpeg"
        PatchBytes -Offset "2AA90C0" -Length "5D69" -Texture -Patch "Backgrounds\Kokiri Twins' House.jpeg"
        PatchBytes -Offset "2560480" -Length "5B1E" -Texture -Patch "Backgrounds\Link's House.jpeg"
        PatchBytes -Offset "2C5DA50" -Length "4B12" -Texture -Patch "Backgrounds\Lon Lon Ranch Stables.jpeg"
        PatchBytes -Offset "2E037A0" -Length "3439" -Texture -Patch "Backgrounds\Mamamu Yan's House.jpeg"
        PatchBytes -Offset "2946120" -Length "4554" -Texture -Patch "Backgrounds\Market Back Alley 1 Day.jpeg"
        PatchBytes -Offset "2A2A110" -Length "2F31" -Texture -Patch "Backgrounds\Market Back Alley 1 Night.jpeg"
        PatchBytes -Offset "296B920" -Length "41ED" -Texture -Patch "Backgrounds\Market Back Alley 2 Day.jpeg"
        PatchBytes -Offset "2A4F910" -Length "3015" -Texture -Patch "Backgrounds\Market Back Alley 2 Night.jpeg"
        PatchBytes -Offset "2991120" -Length "4AC4" -Texture -Patch "Backgrounds\Market Back Alley 3 Day.jpeg"
        PatchBytes -Offset "2A75110" -Length "366B" -Texture -Patch "Backgrounds\Market Back Alley 3 Night.jpeg"
        PatchBytes -Offset "2718370" -Length "62CE" -Texture -Patch "Backgrounds\Market Entrance Day.jpeg"
        PatchBytes -Offset "2A02360" -Length "54CC" -Texture -Patch "Backgrounds\Market Entrance Future.jpeg"
        PatchBytes -Offset "29DB370" -Length "4144" -Texture -Patch "Backgrounds\Market Entrance Night.jpeg"
        PatchBytes -Offset "2DB1430" -Length "39DF" -Texture -Patch "Backgrounds\Market Potion Shop.jpeg"
        PatchBytes -Offset "2F7B0F0" -Length "669B" -Texture -Patch "Backgrounds\Mido's House.jpeg"
        PatchBytes -Offset "2FB60E0" -Length "5517" -Texture -Patch "Backgrounds\Saria's House.jpeg"
        PatchBytes -Offset "307EAF0" -Length "428D" -Texture -Patch "Backgrounds\Temple of Time Entrance Day.jpeg"
        PatchBytes -Offset "3142AF0" -Length "3222" -Texture -Patch "Backgrounds\Temple of Time Entrance Future.jpeg"
        PatchBytes -Offset "30EDB10" -Length "2C02" -Texture -Patch "Backgrounds\Temple of Time Entrance Night.jpeg"
        PatchBytes -Offset "30A42F0" -Length "5328" -Texture -Patch "Backgrounds\Temple of Time Path Day.jpeg"
        PatchBytes -Offset "31682F0" -Length "3860" -Texture -Patch "Backgrounds\Temple of Time Path Future.jpeg"
        PatchBytes -Offset "3113310" -Length "3BC7" -Texture -Patch "Backgrounds\Temple of Time Path Night.jpeg"
        PatchBytes -Offset "2E65EA0" -Length "49E0" -Texture -Patch "Backgrounds\Tent.jpeg"
        PatchBytes -Offset "2D5B9E0" -Length "4119" -Texture -Patch "Backgrounds\Zora Shop.jpeg"
        PatchBytes -Offset "F21810"  -Length "1000" -Texture -Patch "Lens of Truth.bin"
    }

    if (IsChecked -Elem $Options.ExtendedDraw -Enabled)        { ChangeBytes -Offset "A9A970" -Values @("00", "01") }
    if (IsChecked -Elem $Options.ForceHiresModel -Enabled)     { ChangeBytes -Offset "BE608B" -Values @("00") }

    if (IsChecked -Elem $Options.BlackBars -Enabled) {
        ChangeBytes -Offset "B0F5A4" -Values @("00", "00","00", "00")
        ChangeBytes -Offset "B0F5D4" -Values @("00", "00","00", "00")
        ChangeBytes -Offset "B0F5E4" -Values @("00", "00","00", "00")
        ChangeBytes -Offset "B0F680" -Values @("00", "00","00", "00")
        ChangeBytes -Offset "B0F688" -Values @("00", "00","00", "00")
    }

    if (IsChecked -Elem $Options.DisableLowHPSound -Enabled)   { ChangeBytes -Offset "ADBA1A"  -Values @("00", "00") }
    if (IsChecked -Elem $Options.DisableNaviPrompts -Enabled)  { ChangeBytes -Offset "DF8B84"  -Values @("00", "00", "00", "00") }



    # INTERFACE #

    if (IsChecked -Elem $Options.HudTextures -Enabled) {
        PatchBytes  -Offset "1A3CA00" -Texture -Patch "HUD\MM HUD Button.bin"
        PatchBytes  -Offset "1A3C100" -Texture -Patch "HUD\MM HUD Hearts.bin"
        PatchBytes  -Offset "1A3DE00" -Texture -Patch "HUD\MM HUD Key & Rupee.bin"
    }

    if (IsChecked -Elem $Options.ButtonPositions -Enabled) {
        ChangeBytes -Offset "0B57EEF" -Values @("A7")
        ChangeBytes -Offset "0B57F03" -Values @("BE")
        ChangeBytes -Offset "0B586A7" -Values @("17")
        ChangeBytes -Offset "0B589EB" -Values @("9B")
    }

    if (IsChecked -Elem $Options.ShowFileSelectIcons -Enabled) { PatchBytes  -Offset "BAF738" -Patch "File Select.bin" }
    if (IsChecked -Elem $Options.ShowDPad -Enabled)            { ChangeBytes -Offset "348086E" -Values @("01") }



    # COLORS

    if (IsChecked -Elem $Options.EnableTunicColors -Enabled) {
        ChangeBytes -Offset "B6DA38" -IsDec -Values @($Options.SetKokiriTunicColor.Color.R, $Options.SetKokiriTunicColor.Color.G, $Options.SetKokiriTunicColor.Color.B) # Kokiri Tunic
        ChangeBytes -Offset "B6DA3B" -IsDec -Values @($Options.SetGoronTunicColor.Color.R, $Options.SetGoronTunicColor.Color.G, $Options.SetGoronTunicColor.Color.B)    # Goron Tunic
        ChangeBytes -Offset "B6DA3E" -IsDec -Values @($Options.SetZoraTunicColor.Color.R, $Options.SetZoraTunicColor.Color.G, $Options.SetZoraTunicColor.Color.B)       # Zora Tunic
    }

    if (IsChecked -Elem $Options.EnableGauntletTunics -Enabled) {
        ChangeBytes -Offset "B6DA44" -IsDec -Values @($Options.SetSilverGauntletsColor.Color.R, $Options.SetSilverGauntletsColor.Color.G, $Options.SetSilverGauntletsColor.Color.B) # Silver Gauntlets
        ChangeBytes -Offset "B6DA47" -IsDec -Values @($Options.SetGoldenGauntletsColor.Color.R, $Options.SetGoldenGauntletsColor.Color.G, $Options.SetGoldenGauntletsColor.Color.B) # Golden Gauntlets
    }

    if (IsChecked -Elem $Options.EnableButtonColors -Enabled) {
        ChangeBytes -Offset "3480845" -IsDec -Values @($Options.SetAButtonColor.Color.R, $Options.SetAButtonColor.Color.G, $Options.SetAButtonColor.Color.B) -Interval 2 # A Button
        ChangeBytes -Offset "348084B" -IsDec -Values @($Options.SetBButtonColor.Color.R, $Options.SetBButtonColor.Color.G, $Options.SetBButtonColor.Color.B) -Interval 2 # B Button
        ChangeBytes -Offset "3480851" -IsDec -Values @($Options.SetCButtonColor.Color.R, $Options.SetCButtonColor.Color.G, $Options.SetCButtonColor.Color.B) -Interval 2 # C Buttons
        ChangeBytes -Offset "3480863" -IsDec -Values @($Options.SetAButtonColor.Color.R, $Options.SetAButtonColor.Color.G, $Options.SetAButtonColor.Color.B) -Interval 2 # A Note Button

        ChangeBytes -Offset "BB2C8E"  -IsDec -Values @($Options.SetAButtonColor.Color.R, $Options.SetAButtonColor.Color.G) # Pause Screen A Note Button (Red + Green)
        ChangeBytes -Offset "BB2C92"  -IsDec -Values @($Options.SetAButtonColor.Color.B) # Pause Screen A Note Button (Blue)

        ChangeBytes -Offset "AE9EC6"  -IsDec -Values @($Options.SetSButtonColor.Color.R, $Options.SetSButtonColor.Color.G) # Start Button (Red + Green)
        ChangeBytes -Offset "AE9ED8"  -IsDec -Values @(53, 238, $Options.SetSButtonColor.Color.B) # Start Button (Blue)
    }

    if (IsChecked -Elem $Options.MQPauseMenuColors -Enabled) {
        # Cursor
        if (IsChecked -Elem $PatchReduxCheckbox -Visible) {
            ChangeBytes -Offset "3480859"  -Values @("C8", "00", "50")
            ChangeBytes -Offset "348085F"  -Values @("FF", "00", "50")
        }
        ChangeBytes -Offset "BC784B"  -Values @("FF", "00", "32")
        ChangeBytes -Offset "BC78AB"  -Values @("FF", "00", "32")
        ChangeBytes -Offset "BC78BD"  -Values @("FF", "00", "32")
        ChangeBytes -Offset "845755"  -Values @("FF", "64")
    }



    # GAMEPLAY

    if (IsChecked -Elem $Options.Medallions -Enabled)          { ChangeBytes -Offset "E2B454" -Values @("80", "EA", "00", "A7", "24", "01", "00", "3F", "31", "4A", "00", "3F", "00", "00", "00", "00") }

    if (IsChecked -Elem $Options.ReturnChild -Enabled) {
        ChangeBytes -Offset "CB6844"  -Values @("35")
        ChangeBytes -Offset "253C0E2" -Values @("03")
    }

    if (IsChecked -Elem $Options.EasierPuzzles -Enabled) {
        ChangeBytes -Offset "CC4024" -Values @("00", "00", "00", "00") # Dampe's Digging Game
        ChangeBytes -Offset "DBF428" -Values @("0C", "10", "07", "7D", "3C", "01", "42", "82", "44", "81", "40", "00", "44", "98", "90", "00", "E6", "52") # Easier Fishing
        ChangeBytes -Offset "DBF484" -Values @("00", "00", "00", "00") # Easier Fishing
        ChangeBytes -Offset "DBF4A8" -Values @("00", "00", "00", "00") # Easier Fishing
        ChangeBytes -Offset "DCBEAB" -Values @("48")                   # Adult Fish size requirement
        ChangeBytes -Offset "DCBF27" -Values @("48")                   # Adult Fish size requirement
        ChangeBytes -Offset "DCBF33" -Values @("30")                   # Child Fish size requirement
        ChangeBytes -Offset "DCBF9F" -Values @("30")                   # Child Fish size requirement

        # First try truth spinner
        if (!(IsChecked -Elem $Options.MQShadowTemple -Enabled)) { ChangeBytes -Offset "DB9E7C" -Values @("0C", "10", "0D", "", "", "00", "00", "00") }
    }

    if (IsChecked -Elem $Options.FasterBlockPushing) {
        ChangeBytes -Offset "DD2B87" -Values @("80")                   # Block Speed
        ChangeBytes -Offset "DD2D27" -Values @("03")                   # Block Delay
        ChangeBytes -Offset "DD9683" -Values @("80")                   # Milk Crate Speed
        ChangeBytes -Offset "DD981F" -Values @("03")                   # Milk Crate Delay
        ChangeBytes -Offset "CE1BD0" -Values @("40", "80", "00", "00") # Amy Puzzle Speed
        ChangeBytes -Offset "CE0F0F" -Values @("03")                   # Amy Puzzle Delay
        ChangeBytes -Offset "C77CA8" -Values @("40", "80", "00", "00") # Fire Block Speed
        ChangeBytes -Offset "C770C3" -Values @("01")                   # Fire Block Delay
        ChangeBytes -Offset "CC5DBF" -Values @("01")                   # Forest Basement Puzzle Delay
        ChangeBytes -Offset "DBCF73" -Values @("01")                   # spirit Cobra Mirror Delay
        ChangeBytes -Offset "DBA233" -Values @("19")                   # Truth Spinner Speed
        ChangeBytes -Offset "DBA3A7" -Values @("00")                   # Truth Spinner Delay
    }



    # RESTORE #

    if (IsChecked -Elem $Options.CorrectRupeeColors -Enabled) {
        ChangeBytes -Offset "F47EB0" -Values @("70", "6B", "BB", "3F", "FF", "FF", "EF", "3F", "68", "AD", "C3", "FD", "E6", "BF", "CD", "7F", "48", "9B", "91", "AF", "C3", "7D", "BB", "3D", "40", "0F", "58", "19", "88", "ED", "80", "AB") # Purple
        ChangeBytes -Offset "F47ED0" -Values @("D4", "C3", "F7", "49", "FF", "FF", "F7", "E1", "DD", "03", "EF", "89", "E7", "E3", "E7", "DD", "A3", "43", "D5", "C3", "DF", "85", "E7", "45", "7A", "43", "82", "83", "B4", "43", "CC", "83") # Gold
    }

    if (IsChecked -Elem $Options.RestoreCowNoseRing -Enabled) {
        ChangeBytes -Offset "EF3E68" -Values @("00", "00")
    }

    if (IsChecked -Elem $Options.RestoreFireTemple -Enabled) {
        ChangeBytes -Offset "7465"   -Values @("03", "91", "30") # DMA Table, Pointer to AudioBank
        ChangeBytes -Offset "7471"   -Values @("03", "91", "30", "00", "08", "8B", "B0", "00", "03", "91", "30") # DMA Table, Pointer to AudioSeq
        ChangeBytes -Offset "7481"   -Values @("08", "8B", "B0", "00", "4D", "9F", "40", "00", "08", "8B", "B0") # DMA Table, Pointer to AudioTable
        ChangeBytes -Offset "B2E82F" -Values @("04", "24", "A5", "91", "30") # MIPS assembly that loads AudioSeq
        ChangeBytes -Offset "B2E857" -Values @("09", "24", "A5", "8B", "B0") # MIPS assembly that loads AudioTable
        PatchBytes  -Offset "B896A0" -Patch "Fire Temple Theme\12AudioBankPointers.bin"
        PatchBytes  -Offset "B89AD0" -Patch "Fire Temple Theme\12AudioSeqPointers.bin"
        PatchBytes  -Offset "B8A1C0" -Patch "Fire Temple Theme\12AudioTablePointers.bin"
        ExportAndPatch -Path "Fire Temple Theme\12FireTemple"  -Offset "D390" -Length "4CCBB0"
    }



    # VOICES #

    if (IsText -Elem $Options.Voices -Text "Feminine Link Voices" -Enabled) {
        if (IsChecked -Elem $Options.RestoreFireTemple -Enabled)   { PatchBytes -Offset "19D920" -Patch "Voices\Feminine Link Voices.bin" }
        else                                                       { PatchBytes -Offset "18E1E0" -Patch "Voices\Feminine Link Voices.bin" }
    }
    elseif (IsText -Elem $Options.Voices -Text "Majora's Mask Link Voices" -Enabled) {
        if (IsChecked -Elem $Options.RestoreFireTemple -Enabled)   { PatchBytes -Offset "19D920" -Patch "Voices\MM Link Voices.bin" }
        else                                                       { PatchBytes -Offset "18E1E0" -Patch "Voices\MM Link Voices.bin" }
    }


    
    # EQUIPMENT #

    if (IsChecked -Elem $Options.EnableAmmoCapacity -Enabled) {
        ChangeBytes -Offset "B6EC2F" -IsDec -Values @($Options.Quiver1.Text, $Options.Quiver2.Text, $Options.Quiver3.Text) -Interval 2
        ChangeBytes -Offset "B6EC37" -IsDec -Values @($Options.BombBag1.Text, $Options.BombBag2.Text, $Options.BombBag3.Text) -Interval 2
        ChangeBytes -Offset "B6EC57" -IsDec -Values @($Options.BulletBag1.Text, $Options.BulletBag2.Text, $Options.BulletBag3.Text) -Interval 2
        ChangeBytes -Offset "B6EC5F" -IsDec -Values @($Options.DekuSticks1.Text, $Options.DekuSticks2.Text, $Options.DekuSticks3.Text) -Interval 2
        ChangeBytes -Offset "B6EC67" -IsDec -Values @($Options.DekuNuts1.Text, $Options.DekuNuts2.Text, $Options.DekuNuts3.Text) -Interval 2
    }

    if (IsChecked -Elem $Options.EnableWalletCapacity -Enabled) {
        $Wallet1 = Get16Bit -Value ($Options.Wallet1.Text)
        $Wallet2 = Get16Bit -Value ($Options.Wallet2.Text)
        $Wallet3 = Get16Bit -Value ($Options.Wallet3.Text)
        ChangeBytes -Offset "B6EC4C" -Values @($Wallet1.Substring(0, 2), $Wallet1.Substring(2) )
        ChangeBytes -Offset "B6EC4E" -Values @($Wallet2.Substring(0, 2), $Wallet2.Substring(2) )
        ChangeBytes -Offset "B6EC50" -Values @($Wallet3.Substring(0, 2), $Wallet3.Substring(2) )
    }

    if (IsChecked -Elem $Options.UnlockSword -Enabled) {
        ChangeBytes -Offset "BC77AD" -Values @("09")
        ChangeBytes -Offset "BC77F7" -Values @("09")
    }

    if (IsChecked -Elem $Options.UnlockTunics -Enabled) {
        ChangeBytes -Offset "BC77B6" -Values @("09", "09")
        ChangeBytes -Offset "BC77FE" -Values @("09", "09")
    }

    if (IsChecked -Elem $Options.UnlockBoots -Enabled) {
        ChangeBytes -Offset "BC77BA" -Values @("09", "09")
        ChangeBytes -Offset "BC7801" -Values @("09", "09")
    }



    # OTHER #

    if (IsChecked -Elem $Options.ZTargeting -Enabled)          { ChangeBytes -Offset "B71E6D"  -Values @("01") }
    


    # Patch Dungeons Master Quest

    PatchDungeonsMQ



    # Censor Gerudo Textures

    if (IsChecked -Elem $Options.CensorGerudoTextures -Enabled) {
        PatchBytes -Offset "12985F0" -Texture -Patch "Gerudo Symbols\2.bin"
        PatchBytes -Offset "21B8678" -Texture -Patch "Gerudo Symbols\3.bin"
        PatchBytes -Offset "13B4000" -Texture -Patch "Gerudo Symbols\4.bin"
        PatchBytes -Offset "7FD000"  -Texture -Patch "Gerudo Symbols\5.bin"
        PatchBytes -Offset "F70350"  -Texture -Patch "Gerudo Symbols\8.bin"
        PatchBytes -Offset "F80CB0"  -Texture -Patch "Gerudo Symbols\9.bin"
        PatchBytes -Offset "11FB000" -Texture -Patch "Gerudo Symbols\10.bin"
        PatchBytes -Offset "F7A8A0"  -Texture -Patch "Gerudo Symbols\13.bin"
        PatchBytes -Offset "F71350"  -Texture -Patch "Gerudo Symbols\14.bin"
        PatchBytes -Offset "F748A0"  -Texture -Patch "Gerudo Symbols\16.bin"
        PatchBytes -Offset "E68CE8"  -Texture -Patch "Gerudo Symbols\17.bin"
        PatchBytes -Offset "F70B50"  -Texture -Patch "Gerudo Symbols\18.bin"
        PatchBytes -Offset "1456388" -Texture -Patch "Gerudo Symbols\19.bin"
        PatchBytes -Offset "1616000" -Texture -Patch "Gerudo Symbols\20.bin"
        PatchBytes -Offset "2F64E38" -Texture -Patch "Gerudo Symbols\21.bin"
        PatchBytes -Offset "2F73700" -Texture -Patch "Gerudo Symbols\21.bin"

        if ( (IsText -Elem $Options.Models -Text "Replace Adult Model Only" -Enabled) -or (IsText -Elem $Options.Models -Text "Replace Both Models" -Enabled) )   { PatchBytes -Offset "F9B318"  -Texture -Patch "Gerudo Symbols\15.bin" }
        else                                                                                                                                                      { PatchBytes -Offset "F92280"  -Texture -Patch "Gerudo Symbols\15.bin" }

        PatchBytes -Offset "2464D88" -Texture -Patch "Gerudo Symbols\1.bin"  # Room 11 Forest Temple
        PatchBytes -Offset "28BBCD8" -Texture -Patch "Gerudo Symbols\7.bin"  # Room 5 Gerudo Training Ground
        PatchBytes -Offset "28CA728" -Texture -Patch "Gerudo Symbols\7.bin"  # Room 5 Gerudo Training Ground
        PatchBytes -Offset "2B5CDA0" -Texture -Patch "Gerudo Symbols\12.bin" # Room 10 Spirit Temple
        PatchBytes -Offset "2B9BDB8" -Texture -Patch "Gerudo Symbols\12.bin" # Room 10 Spirit Temple
        PatchBytes -Offset "2BE7920" -Texture -Patch "Gerudo Symbols\12.bin" # Room 10 Spirit Temple

        if (IsChecked -Elem $Options.MQSpiritTemple -Enabled)   { PatchBytes -Offset "2B03528" -Texture -Patch "Gerudo Symbols\11.bin" } # Room 0 Spirit Temple
        else                                                    { PatchBytes -Offset "2B03928" -Texture -Patch "Gerudo Symbols\11.bin" } # Room 0 Spirit Temple
    }

}



#==============================================================================================================================================================================================
function PatchBPSOptionsOoT() {
    
    if ( (IsText -Elem $Options.Models -Text "Replace Child Model Only" -Enabled) -or (IsText -Elem $Options.Models -Text "Replace Both Models" -Enabled) ) {
        ApplyPatch -File $Files.decompressedROM -Patch "\Decompressed\Models\child_model.ppf"
    }
    if ( (IsText -Elem $Options.Models -Text "Replace Adult Model Only" -Enabled) -or (IsText -Elem $Options.Models -Text "Replace Both Models" -Enabled)) {
        ApplyPatch -File $Files.decompressedROM -Patch "\Decompressed\Models\adult_model.ppf"
    }
    if (IsText -Elem $Options.Models -Text "Change to Female Models" -Enabled) {
        ApplyPatch -File $Files.decompressedROM -Patch "\Decompressed\Models\female_models.ppf"
    }

    #if ( (IsText -Elem $Options.Voices -Text "Majora's Mask Link Voices" -Enabled)) {
    #    ApplyPatch -File $Files.decompressedROM -Patch "\Decompressed\Voices\mm_link_voices.ppf"
    #}
    #elseif (IsText -Elem $Options.Voices -Text "Feminine Link Voices" -Enabled) {
    #    ApplyPatch -File $Files.decompressedROM -Patch "\Decompressed\Voices\female_link_voices.ppf"
    #}
    
}



#==============================================================================================================================================================================================
function PatchLanguageOptionsOoT() {
    
    if (IsChecked -Elem $Languages.RestoreText -Enabled) {
        ChangeBytes -Offset "7596" -Values @("52", "40")
        PatchBytes  -Offset "B849EC" -Patch "Message\Table.bin"

        $File = $GameFiles.binaries + "\" + "Message\Message Data Static.bin"
        ExportBytes -Offset "92D000" -Length "38140" -Output $File
        if (IsChecked -Elem $PatchReduxCheckbox -Visible)  { ApplyPatch -File $File -Patch "\Data Extraction\Message\Message Data Static OoT Redux.bps" -FilesPath }
        else                                               { ApplyPatch -File $File -Patch "\Data Extraction\Message\Message Data Static OoT.bps"       -FilesPath }

        if (IsChecked -Elem $Languages.MQTextDialogueColors -Enabled) {
            ChangeBytes -File $File -Offset "1558"  -Values @("41"); ChangeBytes -File $File -Offset "1D0C"  -Values @("42"); ChangeBytes -File $File -Offset "28A5"  -Values @("42"); ChangeBytes -File $File -Offset "28CE"  -Values @("41"); ChangeBytes -File $File -Offset "294D"  -Values @("41")
            ChangeBytes -File $File -Offset "29F6"  -Values @("42"); ChangeBytes -File $File -Offset "2AEC"  -Values @("42"); ChangeBytes -File $File -Offset "315A"  -Values @("42"); ChangeBytes -File $File -Offset "3246"  -Values @("42"); ChangeBytes -File $File -Offset "35EE"  -Values @("44")
            ChangeBytes -File $File -Offset "3E25"  -Values @("42"); ChangeBytes -File $File -Offset "4C78"  -Values @("42"); ChangeBytes -File $File -Offset "5C6F"  -Values @("42"); ChangeBytes -File $File -Offset "5CE3"  -Values @("42"); ChangeBytes -File $File -Offset "60B6"  -Values @("41")
            ChangeBytes -File $File -Offset "60DB"  -Values @("41"); ChangeBytes -File $File -Offset "616C"  -Values @("41"); ChangeBytes -File $File -Offset "7172"  -Values @("42"); ChangeBytes -File $File -Offset "7187"  -Values @("42"); ChangeBytes -File $File -Offset "71D9"  -Values @("42")
            ChangeBytes -File $File -Offset "7246"  -Values @("42"); ChangeBytes -File $File -Offset "72AA"  -Values @("42"); ChangeBytes -File $File -Offset "9C15"  -Values @("42"); ChangeBytes -File $File -Offset "B5CC"  -Values @("41"); ChangeBytes -File $File -Offset "B64A"  -Values @("42")
            ChangeBytes -File $File -Offset "B66F"  -Values @("42"); ChangeBytes -File $File -Offset "B6A9"  -Values @("42"); ChangeBytes -File $File -Offset "B6F7"  -Values @("41"); ChangeBytes -File $File -Offset "BEA4"  -Values @("41"); ChangeBytes -File $File -Offset "E6FB"  -Values @("42")
            ChangeBytes -File $File -Offset "E721"  -Values @("42"); ChangeBytes -File $File -Offset "E732"  -Values @("41"); ChangeBytes -File $File -Offset "E951"  -Values @("42"); ChangeBytes -File $File -Offset "E962"  -Values @("41"); ChangeBytes -File $File -Offset "EDF5"  -Values @("42")
            ChangeBytes -File $File -Offset "EE15"  -Values @("42"); ChangeBytes -File $File -Offset "F057"  -Values @("42"); ChangeBytes -File $File -Offset "F0AB"  -Values @("42"); ChangeBytes -File $File -Offset "F0FE"  -Values @("42"); ChangeBytes -File $File -Offset "F19D"  -Values @("42")
            ChangeBytes -File $File -Offset "1097A" -Values @("67"); ChangeBytes -File $File -Offset "10D5B" -Values @("44"); ChangeBytes -File $File -Offset "10FBB" -Values @("44"); ChangeBytes -File $File -Offset "110A1" -Values @("42"); ChangeBytes -File $File -Offset "1115A" -Values @("44")
            ChangeBytes -File $File -Offset "1118B" -Values @("41"); ChangeBytes -File $File -Offset "1130F" -Values @("44"); ChangeBytes -File $File -Offset "113BA" -Values @("42"); ChangeBytes -File $File -Offset "12ABC" -Values @("41"); ChangeBytes -File $File -Offset "1767E" -Values @("42")
            ChangeBytes -File $File -Offset "176CF" -Values @("42"); ChangeBytes -File $File -Offset "177CF" -Values @("42"); ChangeBytes -File $File -Offset "178AC" -Values @("42"); ChangeBytes -File $File -Offset "19051" -Values @("44"); ChangeBytes -File $File -Offset "196F6" -Values @("44")
            ChangeBytes -File $File -Offset "1B3B9" -Values @("42"); ChangeBytes -File $File -Offset "1C488" -Values @("42"); ChangeBytes -File $File -Offset "1C6DC" -Values @("42"); ChangeBytes -File $File -Offset "1CB55" -Values @("42"); ChangeBytes -File $File -Offset "1CB62" -Values @("42")
            ChangeBytes -File $File -Offset "236ED" -Values @("41"); ChangeBytes -File $File -Offset "236FA" -Values @("42"); ChangeBytes -File $File -Offset "2377B" -Values @("41"); ChangeBytes -File $File -Offset "23799" -Values @("42"); ChangeBytes -File $File -Offset "237AB" -Values @("42")
            ChangeBytes -File $File -Offset "237ED" -Values @("42"); ChangeBytes -File $File -Offset "23831" -Values @("42"); ChangeBytes -File $File -Offset "23967" -Values @("42"); ChangeBytes -File $File -Offset "2E23E" -Values @("42"); ChangeBytes -File $File -Offset "2E256" -Values @("42")

            ChangeBytes -File $File -Offset "1097A" -Values @("67", "72", "65", "65", "6E", "20", "69", "63", "6F", "6E", "05", "40", "02")
            PatchBytes  -File $File -Offset "6E10"  -Patch "Message\MQ\Navi Door.bin"
            PatchBytes  -File $File -Offset "10A98" -Patch "Message\MQ\Navi Action.bin"
        }

        <#
        if (IsChecked -Elem $Languages.FemalePronouns -Enabled) {
            PatchBytes  -File $File -Offset "1A371" -Patch "Message\Girl\Cowgirl.bin"
            PatchBytes  -File $File -Offset "642B"  -Patch "Message\Girl\Messenger.bin"

            ChangeBytes -File $File -Offset "17E89" -Values @("67", "69", "72", "6C", "20", "66", "72", "6F", "6D") # Malon

            # Intro cutscene
            ChangeBytes -File $File -Offset "13E0C" -Values @("67", "69", "72", "6C", "05", "41", "20", "05", "40", "77", "68", "6F", "01", "06", "20", "64", "6F", "65", "73", "6E", "27")
            ChangeBytes -File $File -Offset "1398A" -Values @("67", "69", "72", "6C", "20", "77", "69", "74", "68", "6F", "75", "74", "20", "61", "20", "66", "61", "69", "72", "79", "20", "05", "40", "74", "6F", "20", "62", "65", "67", "69", "6E", "01", "68", "65", "72")
            ChangeBytes -File $File -Offset "13A41" -Values @("65", "72")
            ChangeBytes -File $File -Offset "136B7" -Values @("67", "69", "72", "6C", "3F", "05", "40", "02")
        }
        #>

        PatchBytes -Offset "92D000" -Patch ("Message\Message Data Static.bin")
    }

    if (IsChecked -Elem $Languages.Text2x -Enabled)            { ChangeBytes -Offset "B5006F" -Values @("02") }
    elseif (IsChecked -Elem $Languages.Text3x -Enabled) {
        if (IsChecked -Elem $Languages.RestoreText -Enabled)   { PatchBytes -Offset "93B6EC" -Patch "Message\Songs.bin" }
        else                                                   { PatchBytes -Offset "93B6CC" -Patch "Message\Songs.bin" }
        ChangeBytes -Offset "B5006F" -Values @("03")
    }
    
}



#==============================================================================================================================================================================================
function PatchByteOptionsMM() {
    
    # HERO MODE #

    if (IsText -Elem $Options.Damage -Text "OKHO Mode" -Enabled) {
        ChangeBytes -Offset "BABE7F" -Values @("09", "04") -Interval 16
        ChangeBytes -Offset "BABEA2" -Values @("2A", "00")
        ChangeBytes -Offset "BABEA5" -Values @("00", "00", "00")
    }
    elseif ( (IsText -Elem $Options.Damage -Text "1x Damage" -Enabled -Not) -or (IsText -Elem $Options.Recovery -Text "1x Recovery" -Enabled -Not) ) {
        ChangeBytes -Offset "BABE7F" -Values @("09", "04") -Interval 16
        if (IsText -Elem $Options.Recovery -Text "1x Recovery" -Enabled) {
            if (IsText -Elem $Options.Damage -Text "2x Damage" -Enabled)       { ChangeBytes -Offset "BABEA2" -Values @("28", "40") }
            elseif (IsText -Elem $Options.Damage -Text "4x Damage" -Enabled)   { ChangeBytes -Offset "BABEA2" -Values @("28", "80") }
            elseif (IsText -Elem $Options.Damage -Text "8x Damage" -Enabled)   { ChangeBytes -Offset "BABEA2" -Values @("28", "C0") }
        ChangeBytes -Elem -File $Files.decompressedROM -Offset "BABEA5" -Values @("00", "00", "00")
        }
        elseif (IsText -Elem $Options.Recovery -Text "1/2x Recovery" -Enabled) {
            if (IsText -Elem $Options.Damage -Text "1x Damage" -Enabled)       { ChangeBytes -Offset "BABEA2" -Values @("28", "40") }
            elseif (IsText -Elem $Options.Damage -Text "2x Damage" -Enabled)   { ChangeBytes -Offset "BABEA2" -Values @("28", "80") }
            elseif (IsText -Elem $Options.Damage -Text "4x Damage" -Enabled)   { ChangeBytes -Offset "BABEA2" -Values @("28", "C0") }
            elseif (IsText -Elem $Options.Damage -Text "8x Damage" -Enabled)   { ChangeBytes -Offset "BABEA2" -Values @("29", "00") }
        ChangeBytes -Offset "BABEA5" -Values @("05", "28", "43")
        }
        elseif (IsText -Elem $Options.Recovery -Text "1/4x Recovery" -Enabled) {
            if (IsText -Elem $Options.Damage -Text "1x Damage" -Enabled)       { ChangeBytes -Offset "BABEA2" -Values @("28", "80") }
            elseif (IsText -Elem $Options.Damage -Text "2x Damage" -Enabled)   { ChangeBytes -Offset "BABEA2" -Values @("28", "C0") }
            elseif (IsText -Elem $Options.Damage -Text "4x Damage" -Enabled)   { ChangeBytes -Offset "BABEA2" -Values @("29", "00") }
            elseif (IsText -Elem $Options.Damage -Text "8x Damage" -Enabled)   { ChangeBytes -Offset "BABEA2" -Values @("29", "40") }
        ChangeBytes -Offset "BABEA5" -Values @("05", "28", "83")
        }
        elseif (IsText -Elem $Options.Recovery -Text "0x Recovery" -Enabled) {
            if (IsText -Elem $Options.Damage -Text "1x Damage" -Enabled)       { ChangeBytes -Offset "BABEA2" -Values @("29", "40") }
            elseif (IsText -Elem $Options.Damage -Text "2x Damage" -Enabled)   { ChangeBytes -Offset "BABEA2" -Values @("29", "80") }
            elseif (IsText -Elem $Options.Damage -Text "4x Damage" -Enabled)   { ChangeBytes -Offset "BABEA2" -Values @("29", "C0") }
            elseif (IsText -Elem $Options.Damage -Text "8x Damage" -Enabled)   { ChangeBytes -Offset "BABEA2" -Values @("2A", "00") }
        ChangeBytes -Offset "BABEA5" -Values @("05", "29", "43")
        }
    }



    # D-PAD #

    if (IsChecked -Elem $Options.LeftDPad -Enabled)            { ChangeBytes -Offset "3806365" -Values @("01") }
    elseif (IsChecked -Elem $Options.RightDPad -Enabled)       { ChangeBytes -Offset "3806365" -Values @("02") }
    elseif (IsChecked -Elem $Options.HideDPad -Enabled)        { ChangeBytes -Offset "3806365" -Values @("00") }



    # GRAPHICS #

    if (IsChecked -Elem $Options.WideScreen -Enabled) {
        ChangeBytes -Offset "BD5D74" -Values @("3C", "07", "3F", "E3")
        ChangeBytes -Offset "CA58F5" -Values @("6C", "53", "6C", "84", "9E", "B7", "53", "6C") -Interval 2
    }

    if (IsChecked -Elem $Options.WidescreenTextures -Enabled) {
        PatchBytes -Offset "A9A000" -Length "12C00" -Texture -Patch "Carnival of Time.bin"
        PatchBytes -Offset "AACC00" -Length "12C00" -Texture -Patch "Four Giants.bin"
        PatchBytes -Offset "C74DD0" -Length "800"   -Texture -Patch "Lens of Truth.bin"
    }

    if (IsChecked -Elem $Options.ExtendedDraw -Enabled)        { ChangeBytes -Offset "B50874" -Values @("00", "00", "00", "00") }
    if (IsChecked -Elem $Options.BlackBars -Enabled)           { ChangeBytes -Offset "BF72A4" -Values @("00", "00", "00", "00") }
    if (IsChecked -Elem $Options.PixelatedStars -Enabled)      { ChangeBytes -Offset "B943FC" -Values @("10", "00") }



    # COLORS #

    if (IsChecked -Elem $Options.EnableTunicColors -Enabled) {
        ChangeBytes -Offset "116639C" -IsDec -Values @($Options.SetKokiriTunicColor.Color.R, $Options.SetKokiriTunicColor.Color.G,$Options.SetKokiriTunicColor.Color.B)
        ChangeBytes -Offset "11668C4" -IsDec -Values @($Options.SetKokiriTunicColor.Color.R, $Options.SetKokiriTunicColor.Color.G,$Options.SetKokiriTunicColor.Color.B)
        ChangeBytes -Offset "1166DCC" -IsDec -Values @($Options.SetKokiriTunicColor.Color.R, $Options.SetKokiriTunicColor.Color.G,$Options.SetKokiriTunicColor.Color.B)
        ChangeBytes -Offset "1166FA4" -IsDec -Values @($Options.SetKokiriTunicColor.Color.R, $Options.SetKokiriTunicColor.Color.G,$Options.SetKokiriTunicColor.Color.B)
        ChangeBytes -Offset "1167064" -IsDec -Values @($Options.SetKokiriTunicColor.Color.R, $Options.SetKokiriTunicColor.Color.G,$Options.SetKokiriTunicColor.Color.B)
        ChangeBytes -Offset "116766C" -IsDec -Values @($Options.SetKokiriTunicColor.Color.R, $Options.SetKokiriTunicColor.Color.G,$Options.SetKokiriTunicColor.Color.B)
        ChangeBytes -Offset "1167AE4" -IsDec -Values @($Options.SetKokiriTunicColor.Color.R, $Options.SetKokiriTunicColor.Color.G,$Options.SetKokiriTunicColor.Color.B)
        ChangeBytes -Offset "1167D1C" -IsDec -Values @($Options.SetKokiriTunicColor.Color.R, $Options.SetKokiriTunicColor.Color.G,$Options.SetKokiriTunicColor.Color.B)
        ChangeBytes -Offset "11681EC" -IsDec -Values @($Options.SetKokiriTunicColor.Color.R, $Options.SetKokiriTunicColor.Color.G,$Options.SetKokiriTunicColor.Color.B)
    }



    # GAMEPLAY
    
    if (IsChecked -Elem $Options.ZoraPhysics -Enabled $True)   { PatchBytes -Offset "65D000" -Patch "Zora Physics Fix.bin" }



    # RESTORE

    if (IsChecked -Elem $Options.CorrectRomaniSign -Enabled)   { PatchBytes -Offset "26A58C0" -Texture -Patch "Romani Sign.bin" }
    if (IsChecked -Elem $Options.CorrectComma -Enabled)        { ChangeBytes -Offset "ACC660" -Values @("00", "F3", "00", "00", "00", "00", "00", "00", "4F", "60", "00", "00", "00", "00", "00", "00", "24") }
    if (IsChecked -Elem $Options.RestoreTitle -Enabled)        { ChangeBytes -Offset "DE0C2E" -Values @("FF", "C8", "36", "10", "98", "00") }

    if (IsChecked -Elem $Options.CorrectRupeeColors -Enabled) {
        ChangeBytes -Offset "10ED020" -Values @("70", "6B", "BB", "3F", "FF", "FF", "EF", "3F", "68", "AD", "C3", "FD", "E6", "BF", "CD", "7F", "48", "9B", "91", "AF", "C3", "7D", "BB", "3D", "40", "0F", "58", "19", "88", "ED", "80", "AB") # Purple
        ChangeBytes -Offset "10ED040" -Values @("D4", "C3", "F7", "49", "FF", "FF", "F7", "E1", "DD", "03", "EF", "89", "E7", "E3", "E7", "DD", "A3", "43", "D5", "C3", "DF", "85", "E7", "45", "7A", "43", "82", "83", "B4", "43", "CC", "83") # Gold
    }

    if (IsChecked -Elem $Options.RestoreCowNoseRing -Enabled) {
        # ChangeBytes "E0FB84" -Values @("C4", "84", "00", "98", "44", "81", "30", "00", "34", "AE", "00", "04", "46", "06", "20", "3C", "00", "00", "00", "00", "45", "00", "00", "1F")
        # ChangeBytes "E10270" -Values @("00", "00", "00", "00", "03", "E0", "00", "08", "00", "00", "00", "00", "27", "BD", "FF", "E8")
        ChangeBytes "E10270" -Values @("00", "00")
    }

    if (IsChecked -Elem $Options.RestoreSkullKid -Enabled) {
        $Values = @()
        for ($i=0; $i -lt 256; $i++) {
            $Values += 0
            $Values += 1
        }
        ChangeBytes -Offset "181C820" -Values $Values
        PatchBytes  -Offset "181C620" -Texture -Patch "Skull Kid Beak.bin"
    }

    if (IsChecked -Elem $Options.RestorePalaceRoute -Enabled) {
        CreateSubPath -Path ($GameFiles.binaries + "\Deku Palace")
        ChangeBytes "1F6A7" -Values @("B0")
        ChangeBytes "1F6B7" -Values @("B0")
        ExportAndPatch -Path "Deku Palace\deku_palace_scene"  -Offset "2534000" -Length "D220"
        ExportAndPatch -Path "Deku Palace\deku_palace_room_0" -Offset "2542000" -Length "11A50"
        ExportAndPatch -Path "Deku Palace\deku_palace_room_1" -Offset "2554000" -Length "E9B0" 
        ExportAndPatch -Path "Deku Palace\deku_palace_room_2" -Offset "2563000" -Length "124F0"
    }

    if (IsChecked -Elem $Options.RestoreShopMusic -Enabled)    { ChangeBytes "2678007" -Values @("44") }
    if (IsChecked -Elem $Options.PieceOfHeartSound -Enabled)   { ChangeBytes -Offset "BA94C8"  -Values @("10", "00") }
    if (IsChecked -Elem $Options.MoveBomberKid -Enabled)       { ChangeBytes -Offset "2DE4396" -Values @("02", "C5", "01", "18", "FB", "55", "00", "07", "2D") }



    # EQUIPMENT #

    if (IsChecked -Elem $Options.EnableAmmoCapacity -Enabled) {
        ChangeBytes -Offset "C5834F" -IsDec -Values @($Options.Quiver1.Text, $Options.Quiver2.Text, $Options.Quiver3.Text) -Interval 2
        ChangeBytes -Offset "C58357" -IsDec -Values @($Options.BombBag1.Text, $Options.BombBag2.Text, $Options.BombBag3.Text) -Interval 2
        ChangeBytes -Offset "C5837F" -IsDec -Values @($Options.DekuSticks1.Text, $Options.DekuSticks1.Text, $Options.DekuSticks1.Text) -Interval 2
        ChangeBytes -Offset "C58387" -IsDec -Values @($Options.DekuNuts1.Text, $Options.DekuNuts1.Text, $Options.DekuNuts1.Text) -Interval 2
    }

    if (IsChecked -Elem $Options.EnableWalletCapacity -Enabled) {
        $Wallet1 = Get16Bit -Value ($Options.Wallet1.Text)
        $Wallet2 = Get16Bit -Value ($Options.Wallet2.Text)
        $Wallet3 = Get16Bit -Value ($Options.Wallet3.Text)
        ChangeBytes -Offset "C5836C" -Values @($Wallet1.Substring(0, 2), $Wallet1.Substring(2) )
        ChangeBytes -Offset "C5836E" -Values @($Wallet2.Substring(0, 2), $Wallet2.Substring(2) )
        ChangeBytes -Offset "C58370" -Values @($Wallet3.Substring(0, 2), $Wallet3.Substring(2) )
    }

    if (IsChecked -Elem $Options.RazorSword -Enabled) {
        ChangeBytes -Offset "CBA496" -Values @("00", "00") # Prevent losing hits
        ChangeBytes -Offset "BDA6B7" -Values @("01")       # Keep sword after Song of Time
    }



    # OTHER #
    
    if (IsChecked -Elem $Options.FixSouthernSwamp -Enabled) {
        CreateSubPath -Path ($GameFiles.binaries + "\Southern Swamp")
        ChangeBytes -Offset "1EC27"  -Values @("50")
        ChangeBytes -Offset "1EC47"  -Values @("B0")
        ExportAndPatch -Path "Southern Swamp\southern_swamp_cleared_scene"  -Offset "1F0D000" -Length "10630"
        ExportAndPatch -Path "Southern Swamp\southern_swamp_cleared_room_0" -Offset "1F1E000" -Length "1B240"
        ExportAndPatch -Path "Southern Swamp\southern_swamp_cleared_room_2" -Offset "1F4D000" -Length "D0A0"
    }

    if (IsChecked -Elem $Options.DisableLowHPSound -Enabled)   { ChangeBytes -Offset "B97E2A"  -Values @("00", "00") }
    if (IsChecked -Elem $Options.FixGohtCutscene -Enabled)     { ChangeBytes -Offset "F6DE89"  -Values @("8D", "00", "02", "10", "00", "00", "0A") }
    if (IsChecked -Elem $Options.FixMushroomBottle -Enabled)   { ChangeBytes -Offset "CD7C48"  -Values @("1E", "6B") }

}



#==============================================================================================================================================================================================
function PatchBPSOptionsMM() {
    
    if (IsChecked -Elem $Languages.RestoreText -Enabled) {
        ChangeBytes -Offset "1A6D6"  -Values @("AC", "A0")
        PatchBytes  -Offset "C5D0D8" -Patch "Message\Table.bin"
        ExportAndPatch -Path "Message\Message Data Static MM"  -Offset "AD1000" -Length "699F0"
    }

    if (IsChecked -Elem $Languages.CorrectCircusMask -Enabled) {
        PatchBytes -Offset "A2DDC4" -Length "26F" -Texture -Patch "Troupe Leader's Mask.yaz0"

        if (IsChecked -Elem $Languages.RestoreText -Enabled) {
            ChangeBytes -Offset "AD4431" -Values @("54", "72", "6F", "75", "70", "65"); ChangeBytes -Offset "B12DF0" -Values @("54", "72", "6F", "75", "70", "65"); ChangeBytes -Offset "B1BA02" -Values @("54", "72", "6F", "75", "70", "65")
            ChangeBytes -Offset "B1F741" -Values @("54", "72", "6F", "75", "70", "65"); ChangeBytes -Offset "B20924" -Values @("74", "72", "6F", "75", "70", "65"); ChangeBytes -Offset "B21504" -Values @("54", "72", "6F", "75", "70", "65")
            ChangeBytes -Offset "B22E13" -Values @("54", "72", "6F", "75", "70", "65")
        }
        else {
            ChangeBytes -Offset "AD423D" -Values @("54", "72", "6F", "75", "70", "65"); ChangeBytes -Offset "B12B60" -Values @("54", "72", "6F", "75", "70", "65"); ChangeBytes -Offset "B1B766" -Values @("54", "72", "6F", "75", "70", "65")
            ChangeBytes -Offset "B1F495" -Values @("54", "72", "6F", "75", "70", "65"); ChangeBytes -Offset "B20678" -Values @("74", "72", "6F", "75", "70", "65"); ChangeBytes -Offset "B21258" -Values @("54", "72", "6F", "75", "70", "65")
            ChangeBytes -Offset "B22B67" -Values @("54", "72", "6F", "75", "70", "65")
        }
    }

}



#==============================================================================================================================================================================================
function PatchLanguageOptionsMM() {

}



#==============================================================================================================================================================================================
function PatchOptionsSM64() {
    
    if ( !(IsChecked -Elem $PatchOptionsCheckbox -Visible) -or !$GamePatch.options) { return }
    UpdateStatusLabel -Text ("Patching " + $GameType.mode + " Additional Options...")

    Copy-Item -LiteralPath $Files.ROM -Destination $Files.decompressedROM



    # BPS Patching

    if (IsChecked -Elem $Options.FPS -Enabled)                 { ApplyPatch -File $Files.decompressedROM -Patch "\fps.bps" }
    if (IsChecked -Elem $Options.FreeCam -Enabled)             { ApplyPatch -File $Files.decompressedROM -Patch "\cam.bps" }



    # Byte Patching

    $Global:ByteArrayGame = [IO.File]::ReadAllBytes($Files.decompressedROM)


    # HERO MODE

    if (IsText -Elem $Options.Damage -Text "2x Damage" -Enabled)       { ChangeBytes -Offset "F207" -Values @("80") }
    elseif (IsText -Elem $Options.Damage -Text "3x Damage" -Enabled)   { ChangeBytes -Offset "F207" -Values @("40") }



    # GRAPHICS #

    if (IsChecked -Elem $Options.WideScreen -Enabled) {
        ChangeBytes -Offset "3855E" -Values @("47", "40")
        ChangeBytes -Offset "35456" -Values @("46", "C0")
    }

    if (IsChecked -Elem $Options.ForceHiresModel -Enabled)     { ChangeBytes -Offset "32184" -Values @("10", "00")}
    
    if (IsChecked -Elem $Options.BlackBars -Enabled) {
        ChangeBytes -Offset "23A7" -Values @("BC", "00") -Interval 12
        ChangeBytes -Offset "248E" -Values @("00")
        ChangeBytes -Offset "2966" -Values @("00", "00") -Interval 48
        ChangeBytes -Offset "3646A" -Values @("00")
        ChangeBytes -Offset "364AA" -Values @("00")
        ChangeBytes -Offset "364F6" -Values @("00")
        ChangeBytes -Offset "36582" -Values @("00")
        ChangeBytes -Offset "3799F" -Values @("BC", "00") -Interval 12
    }



    # GAMEPLAY #
    if (IsChecked -Elem $Options.LagFix -Enabled)              { ChangeBytes -Offset "F0022" -Values @("0D") }



    [io.file]::WriteAllBytes($Files.decompressedROM, $ByteArrayGame)

}



#==============================================================================================================================================================================================
function CreateOoTOptionsContent() {
    
    CreateOptionsDialog -Width 900 -Height 710
    $ToolTip = CreateTooltip



    # HERO MODE #
    $HeroModeBox                       = CreateReduxGroup -Y 50 -Height 1 -AddTo $Options.Panel -Text "Hero Mode"

    $Options.Damage                    = CreateReduxComboBox -Column 0 -Row 1 -AddTo $HeroModeBox -Items @("1x Damage", "2x Damage", "4x Damage", "8x Damage", "OKHO Mode") -Text "Damage:" -ToolTip $ToolTip -Info "Set the amount of damage you receive`nOKHO Mode = You die in one hit" -Name "Damage"
    $Options.Recovery                  = CreateReduxComboBox -Column 2 -Row 1 -AddTo $HeroModeBox -Items @("1x Recovery", "1/2x Recovery", "1/4x Recovery", "0x Recovery") -Text "Recovery:" -ToolTip $ToolTip -Info "Set the amount health you recovery from Recovery Hearts" -Name "Recovery"
    $Options.SelectMQDungeons          = CreateReduxButton   -Column 4 -Row 1 -AddTo $HeroModeBox -Text "Set Master Quest" -ToolTip $ToolTip -Info "Select the dungeons you want from Master Quest to patch into Ocarina of Time"
    $Options.SelectMQDungeons.Add_Click( { $Options.MasterQuestDungeonsDialog.ShowDialog() } )
    #$Options.BossHP                    = CreateReduxComboBox -Column 0 -Row 2 -AddTo $HeroModeBox -Items @("1x Boss HP", "2x Boss HP", "3x Boss HP")          -Text "Boss HP:"    -ToolTip $ToolTip -Info "Set the amount of health for bosses"   -Name "BossHP"
    #$Options.MonsterHP                 = CreateReduxComboBox -Column 2 -Row 2 -AddTo $HeroModeBox -Items @("1x Monster HP", "2x Monster HP", "3x Monster HP") -Text "Monster HP:" -ToolTip $ToolTip -Info "Set the amount of health for monsters" -Name "MonsterHP"



    # GRAPHICS / Sound #
    $GraphicsBox                       = CreateReduxGroup -Y ($HeroModeBox.Bottom + 5) -Height 2 -AddTo $Options.Panel -Text "Graphics / Sound"
    
    $Options.Widescreen                = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $GraphicsBox -Text "16:9 Widescreen"        -ToolTip $ToolTip -Info "Native 16:9 widescreen display support" -Name "Widescreen"
    $Options.WidescreenTextures        = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $GraphicsBox -Text "16:9 Textures"          -ToolTip $ToolTip -Info "16:9 backgrounds and textures suitable for native 16:9 widescreen display support" -Name "WideScreenTextures"
    $Options.BlackBars                 = CreateReduxCheckBox -Column 2 -Row 1 -AddTo $GraphicsBox -Text "No Black Bars"          -ToolTip $ToolTip -Info "Removes the black bars shown on the top and bottom of the screen during Z-targeting and cutscenes" -Name "BlackBars"
    $Options.ExtendedDraw              = CreateReduxCheckBox -Column 3 -Row 1 -AddTo $GraphicsBox -Text "Extended Draw Distance" -ToolTip $ToolTip -Info "Increases the game's draw distance for objects`nDoes not work on all objects" -Name "ExtendedDraw"
    $Options.ForceHiresModel           = CreateReduxCheckBox -Column 4 -Row 1 -AddTo $GraphicsBox -Text "Force Hires Link Model" -ToolTip $ToolTip -Info "Always use Link's High Resolution Model when Link is too far away" -Name "ForceHiresModel"

    $Options.Models                    = CreateReduxComboBox -Column 0 -Row 2 -AddTo $GraphicsBox -Items @("No Model Replacements", "Replace Child Model Only", "Replace Adult Model Only", "Replace Both Models", "Change to Female Models") -Text "Link's Models:" -ToolTip $ToolTip -Info "1. Replace the model for Child Link with that of Majora's Mask`n2. Replace the model for Adult Link to be Majora's Mask-styled`n3. Combine both previous options`n4. Transform Link into a female" -Name "Models"
    $Options.Voices                    = CreateReduxComboBox -Column 2 -Row 2 -AddTo $GraphicsBox -Items @("No Voice Changes", "Majora's Mask Link Voices", "Feminine Link Voices") -Text "Voice:" -ToolTip $ToolTip -Info "1. Replace the voices for Link with those used in Majora's Mask`n2. Replace the voices for Link to sound feminine" -Name "Voices"
    $Options.DisableLowHPSound         = CreateReduxCheckBox -Column 4 -Row 2 -AddTo $GraphicsBox -Text "Disable Low HP Beep"    -ToolTip $ToolTip -Info "There will be absolute silence when Link's HP is getting low" -Name "DisableLowHPSound"
    


    # INTERFACE #
    $InterfaceBox                      = CreateReduxGroup -Y ($GraphicsBox.Bottom + 5) -Height 1 -AddTo $Options.Panel -Text "Interface"

    $Options.HudTextures               = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $InterfaceBox -Text "MM HUD Textures"                 -ToolTip $ToolTip -Info "Replaces the HUD textures with those froom Majora's Mask" -Name "HudTextures"
    $Options.ButtonPositions           = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $InterfaceBox -Text "MM Button Positions"             -ToolTip $ToolTip -Info "Positions the A and B buttons like in Majora's Mask" -Name "ButtonPositions"
    $Options.ShowFileSelectIcons       = CreateReduxCheckBox -Column 2 -Row 1 -AddTo $InterfaceBox -Text "Show File Select Icons" -Checked -ToolTip $ToolTip -Info "Show icons on the File Select screen to display your save file progress`n- Requires Redux patch" -Name "ShowFileSelectIcons"
    $Options.ShowDPad                  = CreateReduxCheckBox -Column 3 -Row 1 -AddTo $InterfaceBox -Text "Show D-Pad Icon"        -Checked -ToolTip $ToolTip -Info "Show the D-Pad icons ingame that display item shortcuts`n- Requires Redux patch" -Name "ShowDPad"



    # COLORS #
    $ColorsBox                         = CreateReduxGroup -Y ($InterfaceBox.Bottom + 5) -Height 4 -AddTo $Options.Panel -Text "Colors"

    $Options.EnableTunicColors         = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $ColorsBox -Text "Change Tunic Colors"        -ToolTip $ToolTip -Info "Enable changing the color for all three tunics" -Name "EnableTunicColors"
    $Options.EnableGauntletColors      = CreateReduxCheckBox -Column 0 -Row 2 -AddTo $ColorsBox -Text "Change Gauntlet Colors"     -ToolTip $ToolTip -Info "Enable changing the color for the Silver and Golden Gauntlets" -Name "EnableGauntletColors"
    $Options.EnableButtonColors        = CreateReduxCheckBox -Column 0 -Row 3 -AddTo $ColorsBox -Text "Change Button Colors"       -ToolTip $ToolTip -Info "Enable changing the color for the buttons`n- Requires Redux patch" -Name "EnableButtonColors"

    $Options.KokiriTunicColor          = CreateReduxButton   -Column 1 -Row 1 -AddTo $ColorsBox -Text "Set Kokiri Tunic Color"     -ToolTip $ToolTip -Info "Select the color you want for the Kokiri Tunic"
    $Options.GoronTunicColor           = CreateReduxButton   -Column 2 -Row 1 -AddTo $ColorsBox -Text "Set Goron Tunic Color"      -ToolTip $ToolTip -Info "Select the color you want for the Goron Tunic"
    $Options.ZoraTunicColor            = CreateReduxButton   -Column 3 -Row 1 -AddTo $ColorsBox -Text "Set Zora Tunic Color"       -ToolTip $ToolTip -Info "Select the color you want for the Zora Tunic"

    $Options.SilverGauntletsColor      = CreateReduxButton   -Column 1 -Row 2 -AddTo $ColorsBox -Text "Set Silver Gaunlets Color"  -ToolTip $ToolTip -Info "Select the color you want for the Silver Gauntlets"
    $Options.GoldenGauntletsColor      = CreateReduxButton   -Column 2 -Row 2 -AddTo $ColorsBox -Text "Set Golden Gauntlets Color" -ToolTip $ToolTip -Info "Select the color you want for the Golden Gauntlets"

    $Options.AButtonColor              = CreateReduxButton   -Column 1 -Row 3 -AddTo $ColorsBox -Text "Set A Button Color"         -ToolTip $ToolTip -Info "Select the color you want for the A button"
    $Options.BButtonColor              = CreateReduxButton   -Column 2 -Row 3 -AddTo $ColorsBox -Text "Set B Button Color"         -ToolTip $ToolTip -Info "Select the color you want for the B button"
    $Options.CButtonColor              = CreateReduxButton   -Column 3 -Row 3 -AddTo $ColorsBox -Text "Set C Button Color"         -ToolTip $ToolTip -Info "Select the color you want for the C buttons"
    $Options.SButtonColor              = CreateReduxButton   -Column 4 -Row 3 -AddTo $ColorsBox -Text "Set Start Button Color"     -ToolTip $ToolTip -Info "Select the color you want for the Start button"
    
    $Options.ResetAllColors            = CreateReduxButton   -Column 0 -Row 4 -AddTo $ColorsBox -Text "Reset All Colors"           -ToolTip $ToolTip -Info "Reset all colors to their default values"
    $Options.N64OoTColors              = CreateReduxButton   -Column 1 -Row 4 -AddTo $ColorsBox -Text "N64 OoT Button Colors"      -ToolTip $ToolTip -Info "Set the button colors to match the Nintendo 64 revision of Ocarina of Time"
    $Options.N64MMColors               = CreateReduxButton   -Column 2 -Row 4 -AddTo $ColorsBox -Text "N64 MM Button Colors"       -ToolTip $ToolTip -Info "Set the button colors to match the Nintendo 64 revision of Majora's mask"
    $Options.GCOoTColors               = CreateReduxButton   -Column 3 -Row 4 -AddTo $ColorsBox -Text "GC OoT Button Colors"       -ToolTip $ToolTip -Info "Set the button colors to match the GameCube revision of Ocarina of Time"
    $Options.GCMMColors                = CreateReduxButton   -Column 4 -Row 4 -AddTo $ColorsBox -Text "GC MM Button Colors"        -ToolTip $ToolTip -Info "Set the button colors to match the GameCube revision of Majora's Mask"

    $Options.KokiriTunicColor.Add_Click(     { $Options.SetKokiriTunicColor.ShowDialog();     $Settings[$GameType.mode][$Options.SetKokiriTunicColor.Tag] = $Options.SetKokiriTunicColor.Color.Name } )
    $Options.GoronTunicColor.Add_Click(      { $Options.SetGoronTunicColor.ShowDialog();      $Settings[$GameType.mode][$Options.SetGoronTunicColor.Tag]  = $Options.SetGoronTunicColor.Color.Name } )
    $Options.ZoraTunicColor.Add_Click(       { $Options.SetZoraTunicColor.ShowDialog();       $Settings[$GameType.mode][$Options.SetZoraTunicColor.Tag]   = $Options.SetZoraTunicColor.Color.Name } )

    $Options.SilverGauntletsColor.Add_Click( { $Options.SetSilverGauntletsColor.ShowDialog(); $Settings[$GameType.mode][$Options.SetSilverGauntletsColor.Tag] = $Options.SetSilverGauntletsColor.Color.Name } )
    $Options.GoldenGauntletsColor.Add_Click( { $Options.SetGoldenGauntletsColor.ShowDialog(); $Settings[$GameType.mode][$Options.SetGoldenGauntletsColor.Tag] = $Options.SetGoldenGauntletsColor.Color.Name } )

    $Options.AButtonColor.Add_Click(         { $Options.SetAButtonColor.ShowDialog();         $Settings[$GameType.mode][$Options.SetAButtonColor.Tag] = $Options.SetAButtonColor.Color.Name } )
    $Options.BButtonColor.Add_Click(         { $Options.SetBButtonColor.ShowDialog();         $Settings[$GameType.mode][$Options.SetBButtonColor.Tag] = $Options.SetBButtonColor.Color.Name } )
    $Options.CButtonColor.Add_Click(         { $Options.SetCButtonColor.ShowDialog();         $Settings[$GameType.mode][$Options.SetCButtonColor.Tag] = $Options.SetCButtonColor.Color.Name } )
    $Options.SButtonColor.Add_Click(         { $Options.SetSButtonColor.ShowDialog();         $Settings[$GameType.mode][$Options.SetSButtonColor.Tag] = $Options.SetSButtonColor.Color.Name } )
    
    $Options.ResetAllColors.Add_Click( {
        SetButtonColors -A "5A5AFF" -B "009600" -C "FFA000" -Start "C80000"
        $Options.SetKokiriTunicColor.Color     = "#1E691B"; $Settings[$GameType.mode][$Options.SetKokiriTunicColor.Tag]     = $Options.SetKokiriTunicColor.Color.Name
        $Options.SetGoronTunicColor.Color      = "#641400"; $Settings[$GameType.mode][$Options.SetGoronTunicColor.Tag]      = $Options.SetGoronTunicColor.Color.Name
        $Options.SetZoraTunicColor.Color       = "#003C64"; $Settings[$GameType.mode][$Options.SetZoraTunicColor.Tag]       = $Options.SetZoraTunicColor.Color.Name
        $Options.SetSilverGauntletsColor.Color = "#FFFFFF"; $Settings[$GameType.mode][$Options.SetSilverGauntletsColor.Tag] = $Options.SetSilverGauntletsColor.Color.Name
        $Options.SetGoldenGauntletsColor.Color = "#FECF0F"; $Settings[$GameType.mode][$Options.SetGoldenGauntletsColor.Tag] = $Options.SetGoldenGauntletsColor.Color.Name
        $Options.SetAButtonColor.Color         = "#5A5AFF"; $Settings[$GameType.mode][$Options.SetAButtonColor.Tag]         = $Options.SetAButtonColor.Color.Name
        $Options.SetBButtonColor.Color         = "#009600"; $Settings[$GameType.mode][$Options.SetBButtonColor.Tag]         = $Options.SetBButtonColor.Color.Name
        $Options.SetCButtonColor.Color         = "#FFFA00"; $Settings[$GameType.mode][$Options.SetCButtonColor.Tag]         = $Options.SetCButtonColor.Color.Name
        $Options.SetSButtonColor.Color         = "#C80000"; $Settings[$GameType.mode][$Options.SetSButtonColor.Tag]         = $Options.SetSButtonColor.Color.Name
    } )

    $Options.N64OoTColors.Add_Click(         { SetButtonColors -A "5A5AFF" -B "009600" -C "FFA000" -Start "C80000" } )
    $Options.N64MMColors.Add_Click(          { SetButtonColors -A "64C8FF" -B "64FF78" -C "FFF000" -Start "FF823C" } )
    $Options.GCOoTColors.Add_Click(          { SetButtonColors -A "00C832" -B "FF1E1E" -C "FFA000" -Start "787878" } )
    $Options.GCMMColors.Add_Click(           { SetButtonColors -A "64FF78" -B "FF6464" -C "FFF000" -Start "787878" } )



    # GAMEPLAY #
    $GameplayBox                       = CreateReduxGroup -Y ($ColorsBox.Bottom + 5) -Height 1 -AddTo $Options.Panel -Text "Gameplay"

    $Options.ReturnChild               = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $GameplayBox -Text "Can Always Return"      -ToolTip $ToolTip -Info "You can always go back to being a child again before clearing the boss of the Forest Temple`nOut of the way Sheik!" -Name "ReturnChild"
    $Options.Medallions                = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $GameplayBox -Text "Require All Medallions" -ToolTip $ToolTip -Info "All six medallions are required for the Rainbow Bridge to appear before Ganon's Castle`nThe vanilla requirements were the Shadow and Spirit Medallions and the Light Arrows" -Name "Medallions"
    $Options.FasterBlockPushing        = CreateReduxCheckBox -Column 2 -Row 1 -AddTo $GameplayBox -Text "Faster Block Pushing"   -ToolTip $ToolTip -Info "All blocks are pushed faster" -Name "FasterBlockPushing"
    $Options.EasierPuzzles             = CreateReduxCheckBox -Column 3 -Row 1 -AddTo $GameplayBox -Text "Easier Puzzles"         -ToolTip $ToolTip -Info "Certain minigames and puzzles are made easier and faster`n- Dampe's Digging Game is first try always`n- Fishing is less random and has less demanding requirements`n- Shadow Temple Truth Spinner is first try always (Regular Quest only)" -Name "EasierPuzzles"
    


    # RESTORE #
    $RestoreBox                        = CreateReduxGroup -Y ($GameplayBox.Bottom + 5) -Height 1 -AddTo $Options.Panel -Text "Restore / Correct / Censor"

    $Options.CorrectRupeeColors        = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $RestoreBox -Text "Correct Rupee Colors"      -ToolTip $ToolTip -Info "Corrects the colors for the Purple (50) and Golden (200) Rupees" -Name "CorrectRupeeColors"
    $Options.RestoreCowNoseRing        = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $RestoreBox -Text "Restore Cow Nose Ring"     -ToolTip $ToolTip -Info "Restore the rings in the noses for Cows as seen in the Japanese release" -Name "RestoreCowNoseRing"
    $Options.RestoreFireTemple         = CreateReduxCheckBox -Column 2 -Row 1 -AddTo $RestoreBox -Text "Restore Fire Temple"       -ToolTip $ToolTip -Info "Restore the censored Fire Temple theme used since the Rev 2 ROM" -Name "RestoreFireTemple"
    $Options.CensorGerudoTextures      = CreateReduxCheckBox -Column 3 -Row 1 -AddTo $RestoreBox -Text "Censor Gerudo Textures"    -ToolTip $ToolTip -Info "Restore the censored Gerudo symbol textures used in the GameCube / Virtual Console releases`n- Disable the option to uncensor the Gerudo Texture used in the Master Quest dungeons" -Name "CensorGerudoTextures"
    


    # EQUIPMENT #
    $EquipmentBox                      = CreateReduxGroup -Y ($RestoreBox.Bottom + 5) -Height 1 -AddTo $Options.Panel -Text "Equipment"
    
    $Options.UnlockSword               = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $EquipmentBox -Text "Unlock Kokiri Sword" -ToolTip $ToolTip -Info "Adult Link is able to use the Kokiri Sword`nThe Kokiri Sword does half as much damage as the Master Sword" -Name "UnlockSword"
    $Options.UnlockTunics              = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $EquipmentBox -Text "Unlock Tunics"       -ToolTip $ToolTip -Info "Child Link is able to use the Goron Tunic and Zora Tunic`nSince you might want to walk around in style as well when you are young" -Name "UnlockTunics"
    $Options.UnlockBoots               = CreateReduxCheckBox -Column 2 -Row 1 -AddTo $EquipmentBox -Text "Unlock Boots"        -ToolTip $ToolTip -Info "Child Link is able to use the Iron Boots and Hover Boots" -Name "UnlockBoots"

    $Options.Capacity                  = CreateReduxButton   -Column 3 -Row 1 -AddTo $EquipmentBox -Text "Set Capacity"        -ToolTip $OptionsToolTip -Info "Select the capacity values you want for ammo and wallets"
    $Options.Capacity.Add_Click( { $Options.CapacityDialog.ShowDialog() } )



    # EVERYTHING ELSE #
    $OtherBox                          = CreateReduxGroup -Y ($EquipmentBox.Bottom + 5) -Height 1 -AddTo $Options.Panel -Text "Other"

    $Options.DisableNaviPrompts        = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $OtherBox -Text "Remove Navi Prompts" -ToolTip $ToolTip -Info "Navi will no longer interupt your during the first dungeon with mandatory textboxes" -Name "DisableNaviPrompts"
    $Options.DefaultZTargeting         = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $OtherBox -Text "Default Hold Z-Targeting" -ToolTip $ToolTip -Info "Change the Default Z-Targeting option to Hold instead of Switch" -Name "DefaultZTargeting"



    ToggleReduxOptions
    CreateMasterQuestDungeonsDialog
    CreateCapacityDialog  

    $Options.Damage.Add_SelectedIndexChanged({ $Options.Recovery.Enabled = $this.Text -ne "OKHO Mode" })
    $Options.EnableTunicColors.Add_CheckStateChanged({ $Options.KokiriTunicColor.Enabled = $Options.GoronTunicColor.Enabled = $Options.ZoraTunicColor.Enabled = $this.Checked })
    $Options.EnableGauntletColors.Add_CheckStateChanged({ $Options.SilverGauntletsColor.Enabled = $Options.GoldenGauntletsColor.Enabled = $this.Checked })
    $Options.EnableButtonColors.Add_CheckStateChanged({
        $Options.AButtonColor.Enabled = $Options.BButtonColor.Enabled = $Options.CButtonColor.Enabled = $Options.SButtonColor.Enabled = $Options.EnableButtonColors.Enabled -and $Options.EnableButtonColors.Checked
        $Options.N64OoTColors.Enabled = $Options.N64MMColors.Enabled = $Options.GCOoTColors.Enabled = $Options.GCMMColors.Enabled = $Options.EnableButtonColors.Enabled -and $Options.EnableButtonColors.Checked
    })
    $Options.EnableButtonColors.Add_EnabledChanged({
        $Options.AButtonColor.Enabled = $Options.BButtonColor.Enabled = $Options.CButtonColor.Enabled = $Options.SButtonColor.Enabled = $Options.EnableButtonColors.Enabled -and $Options.EnableButtonColors.Checked
        $Options.N64OoTColors.Enabled = $Options.N64MMColors.Enabled = $Options.GCOoTColors.Enabled = $Options.GCMMColors.Enabled = $Options.EnableButtonColors.Enabled -and $Options.EnableButtonColors.Checked
    })

    $Options.Recovery.Enabled = $Options.Damage.Text -ne "OKHO Mode"
    $Options.KokiriTunicColor.Enabled = $Options.GoronTunicColor.Enabled = $Options.ZoraTunicColor.Enabled = $Options.EnableTunicColors.Checked
    $Options.SilverGauntletsColor.Enabled = $Options.GoldenGauntletsColor.Enabled = $Options.EnableGauntletColors.Checked
    $Options.AButtonColor.Enabled = $Options.BButtonColor.Enabled = $Options.CButtonColor.Enabled = $Options.SButtonColor.Enabled = $Options.EnableButtonColors.Enabled -and $Options.EnableButtonColors.Checked
    $Options.N64OoTColors.Enabled = $Options.N64MMColors.Enabled = $Options.GCOoTColors.Enabled = $Options.GCMMColors.Enabled = $Options.EnableButtonColors.Enabled -and $Options.EnableButtonColors.Checked

    $Options.SetKokiriTunicColor       = CreateColorDialog -Color "1E691B" -Name "SetKokiriTunicColor"     -IsGame
    $Options.SetGoronTunicColor        = CreateColorDialog -Color "641400" -Name "SetGoronTunicColor"      -IsGame
    $Options.SetZoraTunicColor         = CreateColorDialog -Color "003C64" -Name "SetZoraTunicColor"       -IsGame
    $Options.SetSilverGauntletsColor   = CreateColorDialog -Color "FFFFFF" -Name "SetSilverGauntletsColor" -IsGame
    $Options.SetGoldenGauntletsColor   = CreateColorDialog -Color "FECF0F" -Name "SetGoldenGauntletsColor" -IsGame
    $Options.SetAButtonColor           = CreateColorDialog -Color "5A5AFF" -Name "SetAButtonColor"         -IsGame
    $Options.SetBButtonColor           = CreateColorDialog -Color "009600" -Name "SetBButtonColor"         -IsGame
    $Options.SetCButtonColor           = CreateColorDialog -Color "FFFA00" -Name "SetCButtonColor"         -IsGame
    $Options.SetSButtonColor           = CreateColorDialog -Color "C80000" -Name "SetSButtonColor"         -IsGame

}



#==============================================================================================================================================================================================
function CreateMMOptionsContent() {
    
    CreateOptionsDialog -Width 900 -Height 620
    $ToolTip = CreateTooltip



    # HERO MODE #
    $HeroModeBox                       = CreateReduxGroup -Y 50 -Height 1 -AddTo $Options.Panel -Text "Hero Mode"

    $Options.Damage                    = CreateReduxComboBox -Column 0 -Row 1 -AddTo $HeroModeBox -Items @("1x Damage", "2x Damage", "4x Damage", "8x Damage", "OKHO Mode") -Text "Damage:" -ToolTip $OptionsToolTip -Info "Set the amount of damage you receive`nOKHO Mode = You die in one hit" -Name "Damage"
    $Options.Recovery                  = CreateReduxComboBox -Column 2 -Row 1 -AddTo $HeroModeBox -Items @("1x Recovery", "1/2x Recovery", "1/4x Recovery", "0x Recovery") -Text "Recovery:" -ToolTip $OptionsToolTip -Info "Set the amount health you recovery from Recovery Hearts" -Name "Recovery"
    #$Options.BossHP                   = CreateReduxComboBox -Column 0 -Row 2 -AddTo $HeroModeBox -Items @("1x Boss HP", "2x Boss HP", "3x Boss HP") -Text "Boss HP:" -ToolTip $OptionsToolTip -Info "Set the amount of health for bosses" -Name "BossHP"



    # D-PAD #
    $DPadBox                           = CreateReduxGroup -Y ($HeroModeBox.Bottom + 5) -Height 1 -AddTo $Options.Panel -Text "D-Pad Icons Layout"
    
    $DPadPanel                         = CreateReduxPanel -Row 0 -AddTo $DPadBox
    $Options.LeftDPad                  = CreateReduxRadioButton -Column 0 -Row 0 -AddTo $DPadPanel          -Disable -Text "Left Side"  -ToolTip $ToolTip -Info "Show the D-Pad icons on the left side of the HUD`n- Requires Redux patch" -Name "LeftDPad"
    $Options.RightDPad                 = CreateReduxRadioButton -Column 1 -Row 0 -AddTo $DPadPanel -Checked -Disable -Text "Right Side" -ToolTip $ToolTip -Info "Show the D-Pad icons on the right side of the HUD`n- Requires Redux patch" -Name "RightDPad"
    $Options.HideDPad                  = CreateReduxRadioButton -Column 2 -Row 0 -AddTo $DPadPanel          -Disable -Text "Hidden"     -ToolTip $ToolTip -Info "Hide the D-Pad icons, while they are still active`n- Requires Redux patch" -Name "HideDPad"
    

   
    # GRAPHICS #
    $GraphicsBox                       = CreateReduxGroup -Y ($DPadBox.Bottom + 5) -Height 1 -AddTo $Options.Panel -Text "Graphics"
    
    $Options.Widescreen                = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $GraphicsBox -Text "16:9 Widescreen"         -ToolTip $ToolTip -Info "Native 16:9 Widescreen Display support" -Name "Widescreen"
    $Options.WidescreenTextures        = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $GraphicsBox -Text "16:9 Textures"           -ToolTip $ToolTip -Info "16:9 backgrounds and textures suitable for native 16:9 widescreen display support" -Name "WidescreenTextures"
    $Options.BlackBars                 = CreateReduxCheckBox -Column 2 -Row 1 -AddTo $GraphicsBox -Text "No Black Bars"           -ToolTip $ToolTip -Info "Removes the black bars shown on the top and bottom of the screen during Z-targeting and cutscenes" -Name "BlackBars"
    $Options.ExtendedDraw              = CreateReduxCheckBox -Column 3 -Row 1 -AddTo $GraphicsBox -Text "Extended Draw Distance"  -ToolTip $ToolTip -Info "Increases the game's draw distance for objects`nDoes not work on all objects" -Name "ExtendedDraw"
    $Options.PixelatedStars            = CreateReduxCheckBox -Column 4 -Row 1 -AddTo $GraphicsBox -Text "Disable Pixelated Stars" -ToolTip $ToolTip -Info "Completely disable the stars at night-time, which are pixelated dots and do not have any textures for HD replacement" -Name "PixelatedStars"
    


    # COLORS #
    $ColorsBox                         = CreateReduxGroup -Y ($GraphicsBox.Bottom + 5) -Height 1 -AddTo $Options.Panel -Text "Colors"
    $Options.EnableTunicColors         = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $ColorsBox -Text "Change Tunic Color" -ToolTip $ToolTip -Info "Enable changing the color for the Hylian form Kokiri tunics" -Name "EnableTunicColors"
    $Options.KokiriTunicColor          = CreateReduxButton   -Column 1 -Row 1 -AddTo $ColorsBox -Text "Kokiri Tunic Color" -ToolTip $ToolTip -Info "Select the color you want for the Kokiri Tunic"
    $Options.ResetAllColors            = CreateReduxButton   -Column 2 -Row 1 -AddTo $ColorsBox -Text "Reset Kokiri Tunic" -ToolTip $ToolTip -Info "Reset the  color for the Kokiri Tunic to it's default value"
    
    $Options.KokiriTunicColor.Add_Click( { $Options.SetKokiriTunicColor.ShowDialog(); $Settings[$GameType.mode][$Options.SetKokiriTunicColor.Tag] = $Options.SetKokiriTunicColor.Color.Name } )
    $Options.ResetAllColors.Add_Click( { $Settings[$GameType.mode][$Options.SetKokiriTunicColor.Tag] = $Options.SetKokiriTunicColor.Color.Name; $Options.SetKokiriTunicColor.Color = "#1E691B" } )



    # GAMEPLAY #
    $GameplayBox                       = CreateReduxGroup -Y ($ColorsBox.Bottom + 5) -Height 1 -AddTo $Options.Panel -Text "Gameplay"

    $Options.ZoraPhysics               = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $GameplayBox -Text "Zora Physics"         -ToolTip $ToolTip -Info "Change the Zora physics when using the boomerang`nZora Link will take a step forward instead of staying on his spot" -Name "ZoraPhysics"



    # RESTORE #
    $RestoreBox                        = CreateReduxGroup -Y ($GameplayBox.Bottom + 5) -Height 2 -AddTo $Options.Panel -Text "Restore / Correct"

    $Options.CorrectRupeeColors        = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $RestoreBox -Text "Correct Rupee Colors"     -ToolTip $ToolTip -Info "Corrects the colors for the Purple (50) and Golden (200) Rupees" -Name "CorrectRupeeColors"
    $Options.RestoreCowNoseRing        = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $RestoreBox -Text "Restore Cow Nose Ring"    -ToolTip $ToolTip -Info "Restore the rings in the noses for Cows as seen in the Japanese release" -Name "RestoreCowNoseRing"
    $Options.CorrectRomaniSign         = CreateReduxCheckBox -Column 2 -Row 1 -AddTo $RestoreBox -Text "Correct Romani Sign"      -ToolTip $ToolTip -Info "Replace the Romani Sign texture to display Romani's Ranch instead of Kakariko Village" -Name "CorrectRomaniSign"
    $Options.CorrectComma              = CreateReduxCheckBox -Column 3 -Row 1 -AddTo $RestoreBox -Text "Correct Comma"            -ToolTip $ToolTip -Info "Make the comma not look as awful" -Name "CorrectComma"
    $Options.RestoreTitle              = CreateReduxCheckBox -Column 4 -Row 1 -AddTo $RestoreBox -Text "Restore Title"            -ToolTip $ToolTip -Info "Restore the title logo colors as seen in the Japanese release" -Name "RestoreTitle"
    $Options.RestoreSkullKid           = CreateReduxCheckBox -Column 0 -Row 2 -AddTo $RestoreBox -Text "Restore Skull Kid"        -ToolTip $ToolTip -Info "Restore Skull Kid's face as seen in the Japanese release" -Name "RestoreSkullKid"
    $Options.RestorePalaceRoute        = CreateReduxCheckBox -Column 1 -Row 2 -AddTo $RestoreBox -Text "Restore Palace Route"     -ToolTip $ToolTip -Info "Restore the route to the Bean Seller within the Deku Palace as seen in the Japanese release" -Name "RestorePalaceRoute"
    $Options.RestoreShopMusic          = CreateReduxCheckBox -Column 2 -Row 2 -AddTo $RestoreBox -Text "Restore Shop Music"       -ToolTip $ToolTip -Info "Restores the Shop music intro theme as heard in the Japanese release" -Name "RestoreShopMusic"
    $Options.PieceOfHeartSound         = CreateReduxCheckBox -Column 3 -Row 2 -AddTo $RestoreBox -Text "4th Piece of Heart Sound" -ToolTip $ToolTip -Info "Restore the sound effect when collecting the fourth Piece of Heart that grants Link a new Heart Container" -Name "PieceOfHeartSound"
    $Options.MoveBomberKid             = CreateReduxCheckBox -Column 4 -Row 2 -AddTo $RestoreBox -Text "Move Bomber Kid"          -ToolTip $ToolTip -Info "Moves the Bomber at the top of the Stock Pot Inn to be behind the bell like in the original Japanese ROM" -Name "MoveBomberKid"



    # EQUIPMENT #
    $EquipmentBox                      = CreateReduxGroup -Y ($RestoreBox.Bottom + 5) -Height 1 -AddTo $Options.Panel -Text "Equipment"
    
    $Options.RazorSword                = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $EquipmentBox -Text "Permanent Razor Sword" -ToolTip $ToolTip -Info "The Razor Sword won't get destroyed after 100 it`nYou can also keep the Razor Sword when traveling back in time" -Name "RazorSword"

    $Options.Capacity                  = CreateReduxButton   -Column 1 -Row 1 -AddTo $EquipmentBox -Text "Set Capacity"          -ToolTip $ToolTip -Info "Select the capacity values you want for ammo and wallets"
    $Options.Capacity.Add_Click( { $Options.CapacityDialog.ShowDialog() } )



    # EVERYTHING ELSE #
    $OtherBox                          = CreateReduxGroup -Y ($EquipmentBox.Bottom + 5) -Height 1 -AddTo $Options.Panel -Text "Other"

    $Options.DisableLowHPSound         = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $OtherBox -Text "Disable Low HP Beep" -ToolTip $ToolTip -Info "There will be absolute silence when Link's HP is getting low" -Name "DisableLowHPSound"
    $Options.FixGohtCutscene           = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $OtherBox -Text "Fix Goht Cutscene"   -ToolTip $ToolTip -Info "Fix Goht's awakening cutscene so that Link no longer gets run over" -Name "FixGohtCutscene"
    $Options.FixMushroomBottle         = CreateReduxCheckBox -Column 2 -Row 1 -AddTo $OtherBox -Text "Fix Mushroom Bottle" -ToolTip $ToolTip -Info "Fix the item reference when collecting Magical Mushrooms as Link puts away the bottle automatically due to an error" -Name "FixMushroomBottle"
    $Options.FixSouthernSwamp          = CreateReduxCheckBox -Column 3 -Row 1 -AddTo $OtherBox -Text "Fix Southern Swamp"  -ToolTip $ToolTip -Info "Fix a misplaced door after Woodfall has been cleared and you return to the Potion Shop`nThe door is slightly pushed forward after Odolwa has been defeated." -Name "FixSouthernSwamp"



    CreateCapacityDialog
    ToggleReduxOptions

    $Options.Damage.Add_SelectedIndexChanged({ $Options.Recovery.Enabled = $this.Text -ne "OKHO Mode" })
    $Options.EnableTunicColors.Add_CheckStateChanged({ $Options.KokiriTunicColor.Enabled = $Options.ResetAllColors.Enabled = $this.Checked })

    $Options.Recovery.Enabled = $Options.Damage.Text -ne "OKHO Mode"
    $Options.KokiriTunicColor.Enabled = $Options.ResetAllColors.Enabled = $Options.EnableTunicColors.Checked

    $Options.SetKokiriTunicColor       = CreateColorDialog -Red "1E" -Green "69" -Blue "1B" -Name "SetKokiriTunicColor"     -IsGame

}



#==============================================================================================================================================================================================
function CreateSM64OptionsContent() {
    
    CreateOptionsDialog -Width 550 -Height 320
    $ToolTip = CreateTooltip



     # HERO MODE #
    $HeroModeBox                       = CreateReduxGroup -Y 50 -Height 1 -AddTo $Options.Panel -Text "Hero Mode"
    
    $Options.Damage                    = CreateReduxComboBox -Column 0 -Row 1 -AddTo $HeroModeBox -Items @("1x Damage", "2x Damage", "3x Damage") -Text "Damage:" -ToolTip $OptionsToolTip -Info "Set the amount of damage you receive" -Name "Damage"



    # GRAPHICS #
    $GraphicsBox                       = CreateReduxGroup -Y ($HeroModeBox.Bottom + 5) -Height 1 -AddTo $Options.Panel -Text "Graphics"
    
    $Options.Widescreen                = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $GraphicsBox -Text "16:9 Widescreen"         -ToolTip $ToolTip -Info "Native 16:9 Widescreen Display support" -Name "Widescreen"
    $Options.ForceHiresModel           = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $GraphicsBox -Text "Force Hires Mario Model" -ToolTip $ToolTip -Info "Always use Mario's High Resolution Model when Mario is too far away" -Name "ForceHiresModel"
    $Options.BlackBars                 = CreateReduxCheckBox -Column 2 -Row 1 -AddTo $GraphicsBox -Text "No Black Bars"           -ToolTip $ToolTip -Info "Removes the black bars shown on the top and bottom of the screen" -Name "BlackBars"
    


    # GAMEPLAY #
    $GameplayBox                       = CreateReduxGroup -Y ($GraphicsBox.Bottom + 5) -Height 1 -AddTo $Options.Panel -Text "Gameplay"

    $Options.FPS                       = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $GameplayBox -Text "60 FPS"        -ToolTip $ToolTip -Info "Increases the FPS from 30 to 60`nWitness Super Mario 64 in glorious 60 FPS" -Name "FPS"
    $Options.FreeCam                   = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $GameplayBox -Text "Analog Camera" -ToolTip $ToolTip -Info "Enable full 360 degrees sideways analog camera`nEnable a second emulated controller and bind the Left / Right for the Analog stick" -Name "FreeCam"
    $Options.LagFix                    = CreateReduxCheckBox -Column 2 -Row 1 -AddTo $GameplayBox -Text "Lag Fix"       -ToolTip $ToolTip -Info "Smoothens gameplay by reducing lag" -Name "LagFix"



    $Options.FPS.Add_CheckStateChanged({ $Options.FreeCam.Enabled = !$this.Checked })
    $Options.FreeCam.Add_CheckStateChanged({ $Options.FPS.Enabled = !$this.Checked })
    $Options.FreeCam.Enabled = !$Options.FPS.Checked
    $Options.FPS.Enabled = !$Options.FreeCam.Checked

}



#==============================================================================================================================================================================================
function CreateMasterQuestDungeonsDialog() {
    
    # Create Dialog
    $Options.MasterQuestDungeonsDialog = CreateDialog -Width 750 -Height 320
    if (Test-Path -LiteralPath $GameFiles.icon -PathType Leaf)       { $Options.MasterQuestDungeonsDialog.Icon = $GameFiles.icon }
    else                                                             { $Options.MasterQuestDungeonsDialog.Icon = $null }

    # Tooltip
    $ToolTip = CreateTooltip

    # Close Button
    $CloseButton = CreateButton -X ($Options.MasterQuestDungeonsDialog.Width / 2 - 40) -Y ($Options.MasterQuestDungeonsDialog.Height - 90) -Width 80 -Height 35 -Text "Close" -AddTo $Options.MasterQuestDungeonsDialog
    $CloseButton.Add_Click( {$Options.MasterQuestDungeonsDialog.Hide()} )

    # Options Label
    $Label = CreateLabel -X 30 -Y 20 -Width 300 -Height 15 -Font $VCPatchFont -Text ($GameType.mode + " - Dungeons Selection") -AddTo $Options.MasterQuestDungeonsDialog

    # Master Quest Dungeons
    $Options.MasterQuestPanel          = CreatePanel -Width $Options.MasterQuestDungeonsDialog.Width -Height ($Options.MasterQuestDungeonsDialog.Height) -AddTo $Options.MasterQuestDungeonsDialog

    # Enable checkbox
    $MasterQuestBox                    = CreateReduxGroup -Y 50 -Height 1 -AddTo $Options.MasterQuestPanel -Text "Master Quest"
    $Options.MasterQuest               = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $MasterQuestBox -Text "Enable Master Quest"           -ToolTip $ToolTip -Info "Changes Ocarina of Time into Master Quest`nMaster Quest remixes the dungeons with harder challenges`nThe intro title is changed as well" -Name "MasterQuest"
    $Options.MQPauseMenuColors         = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $MasterQuestBox -Text "Pause Menu Colors"    -Checked -ToolTip $ToolTip -Info "Set the Pause Menu Colors to match Master Quest" -Name "MQPauseMenuColors"

    $Options.MQDungeonsBox             = CreateReduxGroup -Y ($MasterQuestBox.Bottom + 5) -Height 3 -AddTo $Options.MasterQuestPanel -Text "Master Quest Dungeons"
    $Options.MQInsideTheDekuTree       = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $Options.MQDungeonsBox -Text "Inside the Deku Tree"     -Checked -ToolTip $ToolTip -Info "Patch Inside the Deku Tree to Master Quest"     -Name "MQInsideTheDekuTree"
    $Options.MQDodongosCavern          = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $Options.MQDungeonsBox -Text "Dodongo's Cavern"         -Checked -ToolTip $ToolTip -Info "Patch Dodongo's Cavern to Master Quest"         -Name "MQDodongosCavern"
    $Options.MQInsideJabuJabusBelly    = CreateReduxCheckBox -Column 2 -Row 1 -AddTo $Options.MQDungeonsBox -Text "Inside Jabu-Jabu's Belly" -Checked -ToolTip $ToolTip -Info "Patch Inside Jabu-Jabu's Belly to Master Quest" -Name "MQInsideJabuJabusBelly"
    $Options.MQForestTemple            = CreateReduxCheckBox -Column 3 -Row 1 -AddTo $Options.MQDungeonsBox -Text "Forest Temple"            -Checked -ToolTip $ToolTip -Info "Patch Forest Temple to Master Quest"            -Name "MQForestTemple"
    $Options.MQFireTemple              = CreateReduxCheckBox -Column 0 -Row 2 -AddTo $Options.MQDungeonsBox -Text "Fire Temple"              -Checked -ToolTip $ToolTip -Info "Patch Fire Temple to Master Quest"              -Name "MQFireTemple"
    $Options.MQWaterTemple             = CreateReduxCheckBox -Column 1 -Row 2 -AddTo $Options.MQDungeonsBox -Text "Water Temple"             -Checked -ToolTip $ToolTip -Info "Patch Water Temple to Master Quest"             -Name "MQWaterTemple"
    $Options.MQShadowTemple            = CreateReduxCheckBox -Column 2 -Row 2 -AddTo $Options.MQDungeonsBox -Text "Shadow Temple"            -Checked -ToolTip $ToolTip -Info "Patch Shadow Temple to Master Quest"            -Name "MQShadowTemple"
    $Options.MQSpiritTemple            = CreateReduxCheckBox -Column 3 -Row 2 -AddTo $Options.MQDungeonsBox -Text "Spirit Temple"            -Checked -ToolTip $ToolTip -Info "Patch Spirit Temple to Master Quest"            -Name "MQSpiritTemple"
    $Options.MQIceCavern               = CreateReduxCheckBox -Column 0 -Row 3 -AddTo $Options.MQDungeonsBox -Text "Ice Cavern"               -Checked -ToolTip $ToolTip -Info "Patch Ice Cavern to Master Quest"               -Name "MQIceCavern"
    $Options.MQBottomOfTheWell         = CreateReduxCheckBox -Column 1 -Row 3 -AddTo $Options.MQDungeonsBox -Text "Bottom of the Well"       -Checked -ToolTip $ToolTip -Info "Patch Bottom of the Well to Master Quest"       -Name "MQBottomOfTheWell"
    $Options.MQGerudoTrainingGround    = CreateReduxCheckBox -Column 2 -Row 3 -AddTo $Options.MQDungeonsBox -Text "Gerudo Training Ground"   -Checked -ToolTip $ToolTip -Info "Patch Gerudo Training Ground to Master Quest"   -Name "MQGerudoTrainingGround"
    $Options.MQInsideGanonsCastle      = CreateReduxCheckBox -Column 3 -Row 3 -AddTo $Options.MQDungeonsBox -Text "Inside Ganon's Castle"    -Checked -ToolTip $ToolTip -Info "Patch Inside Ganon's Castle to Master Quest"    -Name "MQInsideGanonsCastle"

    $Options.MQDungeonsBox.Enabled = $Options.MasterQuest.Checked
    $Options.MQPauseMenuColors.Enabled = $Options.MasterQuest.Checked
    $Options.MasterQuest.Add_CheckStateChanged({
        $Options.MQDungeonsBox.Enabled = $this.Checked
        $Options.MQPauseMenuColors.Enabled = $this.Checked
    })

}



#==============================================================================================================================================================================================
function CreateCapacityDialog() {

    # Create Dialog
    $Options.CapacityDialog = CreateDialog -Width 600 -Height 430
    if (Test-Path -LiteralPath $GameFiles.icon -PathType Leaf)       { $Options.CapacityDialog.Icon = $GameFiles.icon }
    else                                                             { $Options.CapacityDialog.Icon = $null }

    # Tooltip
    $ToolTip = CreateTooltip

    # Close Button
    $CloseButton = CreateButton -X ($Options.CapacityDialog.Width / 2 - 40) -Y ($Options.CapacityDialog.Height - 90) -Width 80 -Height 35 -Text "Close" -AddTo $Options.CapacityDialog
    $CloseButton.Add_Click( {$Options.CapacityDialog.Hide()} )

    # Options Label
    $Label = CreateLabel -X 30 -Y 20 -Width 300 -Height 15 -Font $VCPatchFont -Text ($GameType.mode + " - Capacity Selection") -AddTo $Options.CapacityDialog

    # Capacity
    $CapacityPanel                     = CreatePanel -Width $Options.CapacityDialog.Width -Height ($Options.CapacityDialog.Height) -AddTo $Options.CapacityDialog

    # Enable checkbox
    $ToggleBox                         = CreateReduxGroup -Y 50 -Height 1 -AddTo $CapacityPanel -Text "Global Toggle"
    $Options.EnableAmmoCapacity        = CreateReduxCheckBox -Column 0 -Row 1 -AddTo $ToggleBox -Text "Change Ammo Capacity"   -ToolTip $ToolTip -Info "Enable changing the capacity values for ammo" -Name "EnableAmmoCapacity"
    $Options.EnableWalletCapacity      = CreateReduxCheckBox -Column 1 -Row 1 -AddTo $ToggleBox -Text "Change Wallet Capacity" -ToolTip $ToolTip -Info "Enable changing the capacity values for the wallets" -Name "EnableWalletCapacity"

    if ($GameType.mode -eq "Ocarina of Time")     { $AmmoBox = CreateReduxGroup -Y ($ToggleBox.Bottom + 5) -Height 5 -AddTo $CapacityPanel -Text "Ammo Capacity Selection" }
    elseif ($GameType.mode -eq "Majora's Mask")   { $AmmoBox = CreateReduxGroup -Y ($ToggleBox.Bottom + 5) -Height 4 -AddTo $CapacityPanel -Text "Ammo Capacity Selection" }

    $Options.Quiver1                   = CreateReduxTextBox -Column 0 -Row 1 -Text "Quiver (1)"      -Value 30 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Quiver (Base)`nDefault = 30"           -Name "Quiver1"
    $Options.Quiver2                   = CreateReduxTextBox -Column 1 -Row 1 -Text "Quiver (2)"      -Value 40 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Quiver (Upgrade 1)`nDefault = 40"      -Name "Quiver2"
    $Options.Quiver3                   = CreateReduxTextBox -Column 2 -Row 1 -Text "Quiver (3)"      -Value 50 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Quiver (Upgrade 2)`nDefault = 50"      -Name "Quiver3"

    $Options.BombBag1                  = CreateReduxTextBox -Column 0 -Row 2 -Text "Bomb Bag (1)"    -Value 20 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Bomb Bag (Base)`nDefault = 20"         -Name "BombBag1"
    $Options.BombBag2                  = CreateReduxTextBox -Column 1 -Row 2 -Text "Bomb Bag (2)"    -Value 30 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Bomb Bag (Upgrade 1)`nDefault = 30"    -Name "BombBag2"
    $Options.BombBag3                  = CreateReduxTextBox -Column 2 -Row 2 -Text "Bomb Bag (3)"    -Value 40 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Bomb Bag (Upgrade 2)`nDefault = 40"    -Name "BombBag3"

    if ($GameType.mode -eq "Ocarina of Time") {
        $Options.BulletBag1            = CreateReduxTextBox -Column 0 -Row 3 -Text "Bullet Bag (1)"  -Value 30 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Bullet Bag (Base)`nDefault = 30"       -Name "BulletBag1"
        $Options.BulletBag2            = CreateReduxTextBox -Column 1 -Row 3 -Text "Bullet Bag (2)"  -Value 40 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Bullet Bag (Upgrade 1)`nDefault = 40"  -Name "BulletBag2"
        $Options.BulletBag3            = CreateReduxTextBox -Column 2 -Row 3 -Text "Bullet Bag (3)"  -Value 50 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Bullet Bag (Upgrade 2)`nDefault = 50"  -Name "BulletBag3"

        $Options.DekuSticks1           = CreateReduxTextBox -Column 0 -Row 4 -Text "Deku Sticks (1)" -Value 10 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Deku Sticks (Base)`nDefault = 10"      -Name "DekuSticks1"
        $Options.DekuSticks2           = CreateReduxTextBox -Column 1 -Row 4 -Text "Deku Sticks (2)" -Value 20 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Deku Sticks (Upgrade 1)`nDefault = 20" -Name "DekuSticks2"
        $Options.DekuSticks3           = CreateReduxTextBox -Column 2 -Row 4 -Text "Deku Sticks (3)" -Value 30 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Deku Sticks (Upgrade 2)`nDefault = 30" -Name "DekuSticks3"

        $Options.DekuNuts1             = CreateReduxTextBox -Column 0 -Row 5 -Text "Deku Nuts (1)"   -Value 20 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Deku Nuts (Base)`nDefault = 20"        -Name "DekuNuts1"
        $Options.DekuNuts2             = CreateReduxTextBox -Column 1 -Row 5 -Text "Deku Nuts (2)"   -Value 30 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Deku Nuts (Upgrade 1)`nDefault = 30"   -Name "DekuNuts2"
        $Options.DekuNuts3             = CreateReduxTextBox -Column 2 -Row 5 -Text "Deku Nuts (3)"   -Value 40 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Deku Nuts (Upgrade 2)`nDefault = 40"   -Name "DekuNuts3"
    }
    else {
        $Options.DekuSticks1           = CreateReduxTextBox -Column 0 -Row 3 -Text "Deku Sticks (1)" -Value 10 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Deku Sticks (Base)`nDefault = 10"      -Name "DekuSticks1"
        $Options.DekuNuts1             = CreateReduxTextBox -Column 0 -Row 4 -Text "Deku Nuts (1)"   -Value 20 -AddTo $AmmoBox -ToolTip $ToolTip -Info "Set the capacity for the Deku Nuts (Base)`nDefault = 20"        -Name "DekuNuts1"
    }

    $WalletBox                         = CreateReduxGroup -Y ($AmmoBox.Bottom + 5) -Height 1 -AddTo $CapacityPanel -Text "Wallet Capacity Selection"
    $Options.Wallet1                   = CreateReduxTextBox -Column 0 -Row 1 -Length 3 -Text "Wallet (1)" -Value 99  -AddTo $WalletBox -ToolTip $ToolTip -Info "Set the capacity for the Wallet (Base)`nDefault = 99"       -Name "Wallet1"
    $Options.Wallet2                   = CreateReduxTextBox -Column 1 -Row 1 -Length 3 -Text "Wallet (2)" -Value 200 -AddTo $WalletBox -ToolTip $ToolTip -Info "Set the capacity for the Wallet (Upgrade 1)`nDefault = 200" -Name "Wallet2"
    $Options.Wallet3                   = CreateReduxTextBox -Column 2 -Row 1 -Length 3 -Text "Wallet (3)" -Value 500 -AddTo $WalletBox -ToolTip $ToolTip -Info "Set the capacity for the Wallet (Upgrade 2)`nDefault = 500" -Name "Wallet3"

    ToggleAmmoCapacityOptions
    $Options.EnableAmmoCapacity.Add_CheckStateChanged({ ToggleAmmoCapacityOptions })

    ToggleWalletCapacityOptions
    $Options.EnableWalletCapacity.Add_CheckStateChanged({ ToggleWalletCapacityOptions })

}



#==============================================================================================================================================================================================
function ToggleReduxOptions() {
    
    if ($GameType.mode -eq "Ocarina of Time") {
        $Options.ShowFileSelectIcons.Enabled = $PatchReduxCheckbox.Checked
        $Options.ShowDPad.Enabled = $PatchReduxCheckbox.Checked
        $Options.EnableButtonColors.Enabled = $PatchReduxCheckbox.Checked
    }
    elseif ($GameType.mode -eq "Majora's Mask") {
        $Options.LeftDPad.Enabled = $PatchReduxCheckbox.Checked
        $Options.RightDPad.Enabled = $PatchReduxCheckbox.Checked
        $Options.HideDPad.Enabled = $PatchReduxCheckbox.Checked
    }

}



#==============================================================================================================================================================================================
function ToggleAmmoCapacityOptions() {
    
    $Options.Quiver1.Enabled     = $Options.EnableAmmoCapacity.Checked
    $Options.Quiver2.Enabled     = $Options.EnableAmmoCapacity.Checked
    $Options.Quiver3.Enabled     = $Options.EnableAmmoCapacity.Checked

    $Options.BombBag1.Enabled    = $Options.EnableAmmoCapacity.Checked
    $Options.BombBag2.Enabled    = $Options.EnableAmmoCapacity.Checked
    $Options.BombBag3.Enabled    = $Options.EnableAmmoCapacity.Checked

    $Options.DekuSticks1.Enabled = $Options.EnableAmmoCapacity.Checked
    $Options.DekuNuts1.Enabled   = $Options.EnableAmmoCapacity.Checked

    if ($GameType.mode -eq "Ocarina of Time") {
        $Options.BulletBag1.Enabled  = $Options.EnableAmmoCapacity.Checked
        $Options.BulletBag2.Enabled  = $Options.EnableAmmoCapacity.Checked
        $Options.BulletBag3.Enabled  = $Options.EnableAmmoCapacity.Checked

        $Options.DekuSticks2.Enabled = $Options.EnableAmmoCapacity.Checked
        $Options.DekuSticks3.Enabled = $Options.EnableAmmoCapacity.Checked

        $Options.DekuNuts2.Enabled   = $Options.EnableAmmoCapacity.Checked
        $Options.DekuNuts3.Enabled   = $Options.EnableAmmoCapacity.Checked
    }

}



#==============================================================================================================================================================================================
function ToggleWalletCapacityOptions() {
    
    $Options.Wallet1.Enabled = $Options.EnableWalletCapacity.Checked
    $Options.Wallet2.Enabled = $Options.EnableWalletCapacity.Checked
    $Options.Wallet3.Enabled = $Options.EnableWalletCapacity.Checked

}



#==============================================================================================================================================================================================
function SetButtonColors([String]$A, [String]$B, [String]$C, [String]$Start) {

    $Settings[$GameType.mode][$Options.SetAButtonColor.Tag] = $A;     $Options.SetAButtonColor.Color = "#" + $A
    $Settings[$GameType.mode][$Options.SetBButtonColor.Tag] = $B;     $Options.SetBButtonColor.Color = "#" + $B
    $Settings[$GameType.mode][$Options.SetCButtonColor.Tag] = $C;     $Options.SetCButtonColor.Color = "#" + $C
    $Settings[$GameType.mode][$Options.SetSButtonColor.Tag] = $Start; $Options.SetSButtonColor.Color = "#" + $Start

}



#==============================================================================================================================================================================================

Export-ModuleMember -Function ToggleReduxOptions

Export-ModuleMember -Function PatchByteOptionsOoT
Export-ModuleMember -Function PatchByteOptionsMM
Export-ModuleMember -Function PatchBPSOptionsOoT
Export-ModuleMember -Function PatchBPSOptionsMM
Export-ModuleMember -Function PatchOptionsSM64
Export-ModuleMember -Function PatchLanguageOptionsOoT
Export-ModuleMember -Function PatchLanguageOptionsMM

Export-ModuleMember -Function CreateOoTOptionsContent
Export-ModuleMember -Function CreateMMOptionsContent
Export-ModuleMember -Function CreateSM64OptionsContent