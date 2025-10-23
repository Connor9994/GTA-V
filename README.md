# GTA-V

![GitHub stars](https://img.shields.io/github/stars/Connor9994/GTA-V?style=social) ![GitHub forks](https://img.shields.io/github/forks/Connor9994/GTA-V?style=social) ![GitHub issues](https://img.shields.io/github/issues/Connor9994/GTA-V) 

This is an AutoHotkey (AHK) script that automates gameplay in Grand Theft Auto by detecting on-screen elements and performing actions automatically.
Features

    Automated Mission Handling: Detects various game states and responds accordingly

    Pixel Color Detection: Uses screen analysis to identify game menus and statuses

    AFK Prevention: Automatically performs actions to prevent being kicked for inactivity

    Multi-state Awareness: Recognizes different lobby states, round completion, and menu screens

Hotkeys

    F5: Start the automation script

    F6: Emergency stop - releases all keys and exits automation

    F7: Temporary movement combo (W+D for 2 seconds)

    Ctrl+R: Reload the script

Game States Detected

The script automatically detects and handles:

    3rd Lobby Not Ready: Clicks specific screen positions to navigate menus

    3rd Lobby Ready: Waits until lobby state changes

    Round Over: Advances through end-of-round screens

    Lobby Selection: Navigates lobby selection menus

    Default Action: When no specific state is detected, performs W+F key combination to maintain activity

Technical Details

    Uses Gdip.ahk library for screen capture and pixel color analysis

    Implements color detection at specific screen coordinates to determine game state

    Includes proper key state management to prevent stuck keys

    Configurable delays between actions

    Screen resolution independent (uses percentage-based coordinates)

Requirements

    AutoHotkey

    Gdip.ahk library in the same directory

    Grand Theft Auto window active (ahk_class grcWindow)

Usage

    Ensure GTA is running and active

    Run the AHK script

    Press F5 to start automation

    Press F6 at any time to stop
