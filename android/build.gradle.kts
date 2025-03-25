allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// Definindo o novo diretório de build
val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.set(newBuildDir)

subprojects {
    // Definindo o diretório de build para cada subprojeto
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.set(newSubprojectBuildDir)
    // Garantindo que o projeto ":app" seja avaliado antes dos outros subprojetos
    project.evaluationDependsOn(":app")
}

// Tarefa para limpar o diretório de build
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
