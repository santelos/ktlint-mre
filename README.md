## **Minimal reproducible example for ktlint project bug issue**
Bug issue reference: [https://github.com/JLLeitschuh/ktlint-gradle/issues/399](https://github.com/JLLeitschuh/ktlint-gradle/issues/399)

**Steps to reproduce:**
 - Make sure you have local $JAVA_HOME references the 14.0.2 jdk version
 - Run (local check) `./gradlew clean ktlintCheck`
 - Run (docker build) `docker build -t <image_name> .`
 
**Expected result:**
 - Local check **failed** with _"ktlintMainSourceSetCheck"_ task failure
 - Local check debug log for _"ktlintMainSourceSetCheck"_ is `[DEBUG] <...>ms / 1 file(s) / 1 error(s)`
 - Docker build **failed** with _"ktlintMainSourceSetCheck"_ task failure
 - Docker build debug log for _"ktlintMainSourceSetCheck"_ is `[DEBUG] <...>ms / 1 file(s) / 1 error(s)`
 
**Actual result:**
 - Local check **completes** successfully
 - Local check debug log for _"ktlintMainSourceSetCheck"_ is `[DEBUG] <...>ms / 0 file(s) / 0 error(s)`
 - Docker build works as expected
