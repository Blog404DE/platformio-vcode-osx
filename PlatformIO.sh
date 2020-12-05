#!/bin/sh

echo "Looking for VSCode..."
echo "PROGRESS:20%"

MAIN_VSCODE_EXEC="$(mdfind "kMDItemCFBundleIdentifier == 'com.microsoft.VSCode'" | grep -v ShipIt | head -1 )"

sleep .5

if [ -z "$MAIN_VSCODE_EXEC" ]; then
        echo "PROGRESS:80%"
        echo "ALERT:Unable to find Visual Studio Code|Please make sure you have already installed Visual Studio Code under Applications."
        sleep 1
        echo "QUITAPP"
        sleep 1
        echo "PROGRESS:100%"
		exit -1
else
        echo "PROGRESS:10%"
        echo "Visual Code found: ${MAIN_VSCODE_EXEC}"
        echo "Setting Extension directory to ${HOME}/.platformio-ide"
        export VSCODE_HOME="$HOME/.platformio-ide"

		echo "PROGRESS:20%"
		status=$(ps aux | grep -v grep | grep -ci "${MAIN_VSCODE_EXEC}")
		if [ $status -gt 0 ]; then
			echo "PROGRESS:80%"
	        echo "ALERT:Visual Studio Code started|Visual Studio Code is already started. Please close current instance to allow re-start with PlatformIO."
	        sleep 1
	        echo "QUITAPP"
	        sleep 1
	        echo "PROGRESS:100%"
			exit -1
		else
			echo "No instance of Visual Studio Code started. Starting Visual Code with PlatformIO."
		fi

        echo "PROGRESS:40%"
        echo "Checking for PlatformIO Plugin"
        "/${MAIN_VSCODE_EXEC}/Contents/Resources/app/bin/code" --extensions-dir ${VSCODE_HOME}  --list-extensions | grep 'platformio.platformio-ide' &> /dev/null
        if [ $? == 0 ]; then
                echo "PlatformIO Plugin found"
        else
                echo "PlatformIO Plugin missing: starting installation"
                "/${MAIN_VSCODE_EXEC}/Contents/Resources/app/bin/code" --extensions-dir ${VSCODE_HOME} --install-extension 'platformio.platformio-ide'
        fi
        echo "PROGRESS:60%"

        echo "Loading PlatformIO for Visual Studio Code."
        $("/${MAIN_VSCODE_EXEC}/Contents/Resources/app/bin/code" --extensions-dir ${VSCODE_HOME} $@)
        sleep .5
        echo "PROGRESS:100%"
fi
