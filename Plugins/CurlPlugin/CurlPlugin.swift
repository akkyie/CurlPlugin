import PackagePlugin

@main
struct CurlPlugin: BuildToolPlugin {
    func createBuildCommands(
        context: PluginContext,
        target: Target
    ) async throws -> [Command] {
        return [
            .prebuildCommand(
                displayName: "curl",
                executable: Path("/usr/bin/curl"),
                arguments: ["https://www.apple.com/"],
                environment: [:],
                outputFilesDirectory: context.pluginWorkDirectory
            )
        ]
    }
}
