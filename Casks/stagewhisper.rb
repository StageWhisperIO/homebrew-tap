cask "stagewhisper" do
  version "1.31.2"
  sha256 "73a56d3d3c41a1b5e536abb2a3e7d85afa343706273e695796bf4bbc4226e997"

  url "https://github.com/StageWhisperIO/stagewhisper/releases/download/v#{version}/StageWhisper-Lite.dmg",
      verified: "github.com/StageWhisperIO/stagewhisper/"
  name "StageWhisper Lite"
  desc "Live-call transcription with on-device speech-to-text"
  homepage "https://stagewhisper.io/"

  livecheck do
    url "https://github.com/StageWhisperIO/stagewhisper"
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "StageWhisper Lite.app"

  zap trash: [
    "~/Library/Application Support/com.stagewhisper.free",
    "~/Library/Caches/com.stagewhisper.free",
    "~/Library/HTTPStorages/com.stagewhisper.free",
    "~/Library/Logs/com.stagewhisper.free",
    "~/Library/Preferences/com.stagewhisper.free.plist",
    "~/Library/Saved Application State/com.stagewhisper.free.savedState",
    "~/Library/WebKit/com.stagewhisper.free",
  ]
end
