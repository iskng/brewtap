class Msgexp < Formula
  desc "Tool to export iMessage data and run iMessage diagnostics"
  homepage "https://github.com/iskng/imessage-exporter"
  version "2.1.1f"

  url "https://github.com/iskng/imessage-exporter/releases/download/#{version}/imessage-exporter"
  sha256 "61a3fe6ed2639f2fad23a9dcc71b53f243b3d6bc647f8a468ea1b6e488aac6a9"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "imessage-exporter" => "msgexp"
  end

  test do
    system "#{bin}/msgexp", "--version"
  end
end 