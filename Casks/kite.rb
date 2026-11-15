cask "kite" do
  version "0.18.0"
  sha256 "1e07396443d3f7425ab00e3d532e2f34738338b989e1f5a85f281bd42aca4e59"

  url "https://github.com/kite-org/kite/releases/download/v#{version}/kite-darwin-arm64.dmg"
  name "Kite"
  desc "Kubernetes desktop workspace"
  homepage "https://kitehq.dev/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Kite.app"

  caveats <<~EOS
    Kite Desktop is in beta and is not yet signed with an Apple Developer ID or notarized.
    If macOS blocks the first launch, run:
      xattr -dr com.apple.quarantine "#{appdir}/Kite.app"
  EOS
end
