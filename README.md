# PlatformIO OSX VSCode Launcher Application
![platformio-vscode-osx](https://raw.githubusercontent.com/Blog404DE/platformio-vcode-osx/master/PlatformIO-vcode-osx-icon.png)

**Author:** Jens Dutzi
**Version:** 1.0.0

Based on [platformio-atom-osx](https://github.com/tripflex/platformio-atom-osx) from Myles McNamara

Run this application in OSX to launch [Visual Studio Code](https://code.visualstudio.com) using `~/.platformio-ide` as extension-directory instead of the default `~/.vscode`.  This allows you to have two separate setups for [Visual Studio Code](https://code.visualstudio.com), one specifically for [PlatformIO](http://platformio.org) and one for any other development purposes.

See PlatformIO package discussion for more details and possible other setups and solutions: https://github.com/platformio/platformio-atom-ide/issues/158

## Why did you developed it?

The [PlatformIO](http://platformio.org) extension is quite extensive and especially users who use Visual Studio code for other programming purposes do not always want to have PlatformIO and its associated packages active. [PlatformIO](http://platformio.org) can be explicitly started with this Launcher Application as soon as you want to develop it for Arduino Software.

## Why should i use  [Visual Studio Code](https://code.visualstudio.com) instead of [Atom](http://atom.io)? 

In the end it is a matter of taste. Some developers swear by [Atom](http://atom.io), others by [Visual Studio Code](https://code.visualstudio.com). Under [platformio-atom-osx](https://github.com/tripflex/platformio-atom-osx) there is a similar Launcher Application from Myles McNamara for Atom.

## How?
This was created using the open source [Platypus](https://sveinbjorn.org/platypus) developer tool (very awesome), and the code in the `PlatformIO.sh` file.

## FAQ

1. Where do I download it?

	Go to the [Releases](https://github.com/Blog404DE/platformio-vcode-osx/releases) page and download the `PlatformIO.app` file. Just drop the `PlatformIO.app` to your Application Folder. The installation of the [PlatformIO](http://platformio.org) extension runs automatically the first time you run the Launcher Application.
   
2. Is the Application sigend?

	The file offered for download is digitally signed for use under MacOS. If you create the application yourself using the source code, the Launcher Application is not automatically signed.
	
3. Can I run both standard Visual Studio Code and PlatformIO Atom instances together?

	Unfortunately, no, not at this time. Reason being is that it appears [Visual Studio Code](https://code.visualstudio.com) did not allow to open another instance.
   
4. How does this application find the Atom.app to use?

	Just like in the shell script code used by the core of [Visual Studio Code](https://code.visualstudio.com), spotlight search is used to locate the correct `Visual Studio Code.app` or whatever custom name you have used (it searches for `com.microsoft.VSCode` bundle identifier)
   
5. It says I have to install Visual Studio Code, but it's already installed?

	Make sure you have moved the file to `Applications` and try again.
   
---

##### License information:

This project is not affiliated with PlatformIO Labs (PlatformIO) and Microsoft (Visual Studio Code) and the repository contains neither the PlatformIO extension nor Visual Studio Code. The copyright for PlatformIO and Visual Studio Code is held by the respective rights holders. This also applies to the two components of the Application Launcher icon.
	
