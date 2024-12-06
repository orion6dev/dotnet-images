# PowerShell Script to Build Docker Image Using Environment Variables

# Docker build command with arguments extracted from the Jetbrains Rider configuration.
docker build `
  --file Dockerfile `
  --tag orion6docker/dotnet-aspnet:local `
  --build-arg GITHUB_TOKEN=$Env:GH_TOKEN `
  --build-arg GITHUB_USER=$Env:GH_USER `
  .

# Output the status after the build completes
if ($?) {
  Write-Host "Docker image built successfully" -ForegroundColor Green
} else {
  Write-Host "Docker image build failed" -ForegroundColor Red
}
