# Spek

*Spek* generates a spectrogram for the input audio file.

Spek is an acoustic spectrum analyser written in C++. It uses FFmpeg
libraries for audio decoding and wxWidgets for the GUI.

Spek is available on *BSD, GNU/Linux, Windows and Mac OS X.

Find out more about Spek on its website: <https://www.spek.cc/>

# SYNOPSIS

`spek` [*OPTION* *...*] \[*FILE*] \[*PNG*] \[*WIDTH*] \[*HEIGHT*]

## ARGUMENTS

`FILE`
:   Audio file to be analyzed.

`PNG`
:   Write spectrogram to this PNG file then exit.

`WIDTH`
:   Initial width of the spectrum in pixels.

`HEIGHT`
:   Initial height of the spectrum in pixels.

# OPTIONS

`-h`, `--help`
:   Output the help message then quit.

`-V`, `--version`
:   Output version information then quit.

# KEYBINDINGS

## Notes

On OS X use the Command key instead of Ctrl.

## Menu

`Ctrl-O`
:   Open a new file.

`Ctrl-S`
:   Save the spectrogram as an image file.

`Esc`
:   Close Spek.

`Ctrl-E`
:   Show the preferences dialog.

`F1`
:   Open online manual in the browser.

`Shift-F1`
:   Show the about dialog.

## Spectrogram

`c`, `C`
:   Change the audio channel.

`f`, `F`
:   Change the DFT window function.

`l`, `L` (+Shift to reverse)
:   Change the lower limit of the dynamic range in dBFS.

`p`, `P`
:   Change the palette.

`s`, `S`
:   Change the audio stream.

`u`, `U` (+Shift to reverse)
:   Change the upper limit of the dynamic range in dBFS.

`w`, `W`
:   Change the DFT window size.

# FILES

*~/.config/spek/preferences*
:   The configuration file for *Spek*, stored in a simple INI format.

# AUTHORS

Alexander Kojevnikov <alexander@kojevnikov.com>. Other contributors are listed
in the CREDITS.md file distributed with the source code.

# DISTRIBUTION

The latest version of *Spek* may be downloaded from <https://www.spek.cc>.

## Spek 0.8.5 - Released 2023-01-09

### New Features And Enhancements

(this fork)

 * Applied patches from 'patches' folder
 * Exit on 'Esc'
 * Store preferences in .ini file in .exe folder
 * Bigger font and bigger window size, change window size using .ini
 * Change upper limit in dBFS on pressing 'U' works
 * Minimal ffmpeg version, .exe can be additionally shrinked to 5mb using UPX
 * Somehow broke translations, sorry :( Spek just ignores 5 translated entries from main menu (even new added lines for them). 

(original)

New features since 0.8.2:

 * Upgrade to FFmpeg 5.1
 * Add 2 more palettes and change the default.
 * Allow changing the DFT window size and function.
 * Allow switching between audio streams and channels.
 * Add translations for 14 additional languages.

Enhancements:

 * Remove dependency on `intltool`.
 * Fix FFmpeg build warnings.
 * Detect AR tool.
 * Use Homebrew for macOS dependencies.
 * Improve test coverage.
 * Use `XDG_CONFIG_HOME` on Unix systems.

Bugfixes:

 * Remove association with .mod and MIDI files.
 * Fix autoconf errors.
 * Fix an AVX-related crash.

### Sources / Packages

Spek 0.8.5 tarball:

 * <https://github.com/alexkay/spek/releases/download/v0.8.5/spek-0.8.5.tar.xz>

Windows and Mac OS X binaries:

 * <https://github.com/alexkay/spek/releases/download/v0.8.2/spek-0.8.2.msi>
 * <https://github.com/alexkay/spek/releases/download/v0.8.2/spek-0.8.2.zip>
 * <https://github.com/alexkay/spek/releases/download/v0.8.2/spek-0.8.2.dmg>

Unix packages:

 * <https://github.com/alexkay/spek/blob/master/INSTALL.md#bsd-and-gnulinux>

### Dependencies

 * wxWidgets >= 3
 * A recent version of FFmpeg
