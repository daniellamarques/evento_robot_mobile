*** Variables ***
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_APP}                  Bankeiro
${ANDROID_PLATFORM_NAME}        Android
${ANDROID_DEVICENAME}           emulator-5554
${ANDROID_ACTIVITY}             com.bankeiro.test.MainActivity
${ANDROID_APPPACKAGE}           com.bankeiro.test
${ANDROID_PLATFORM_VERSION}     ${EMPTY}
*** Keywords ***
Iniciar Aplicativo
    Open Application    http://127.0.0.1:4723/wd/hub
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    deviceName=${ANDROID_DEVICENAME}
    ...    appPackage=${ANDROID_APPPACKAGE}
    ...    appActivity=${ANDROID_ACTIVITY}
    Set Appium Timeout    30s
    Wait Until Page Contains Element    //android.widget.ScrollView    30s
Fechar Aplicativo
    Sleep  1s
    Close Application
