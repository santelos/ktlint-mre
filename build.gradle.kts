import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

group = "ru.santelos"
version = "0.0.1"

repositories {
    mavenCentral()
}

plugins {
    kotlin("jvm") version "1.4.10"
    id("org.jlleitschuh.gradle.ktlint") version "9.4.0"
}

tasks.withType<KotlinCompile> {
    kotlinOptions.jvmTarget = "14"
}
