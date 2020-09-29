## **Minimal reproducible example for ktlint project bug issue**
Bug issue reference: [https://github.com/JLLeitschuh/ktlint-gradle/issues/399](https://github.com/JLLeitschuh/ktlint-gradle/issues/399)

**Steps to reproduce:**
 - Get two machines with Windows and Linux based OS.
 - Make sure you have local $JAVA_HOME references the 14 jdk version
 - Run (local check) `./gradlew clean ktlintCheck`
 - Run (docker build) `docker build -t <image_name> .`
 
**Expected result:**
 - **[Windows OS]** Local check **failed** with _"ktlintMainSourceSetCheck"_ task failure
 - **[Windows OS]** Local check debug log for _"ktlintMainSourceSetCheck"_ is `[DEBUG] <...>ms / 1 file(s) / 1 error(s)`
 - **[Linux OS]** Docker build **failed** with _"ktlintMainSourceSetCheck"_ task failure
 - **[Linux OS]** Docker build debug log for _"ktlintMainSourceSetCheck"_ is `[DEBUG] <...>ms / 1 file(s) / 1 error(s)`
 
**Actual result:**
 - **[Windows OS]** Local check **completes** successfully
 - **[Windows OS]** Local check debug log for _"ktlintMainSourceSetCheck"_ is `[DEBUG] <...>ms / 0 file(s) / 0 error(s)`
 - **[Linux OS]** works as expected
