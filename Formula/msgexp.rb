class Msgexp < Formula
  desc "Tool to export iMessage data and run iMessage diagnostics"
  homepage "https://github.com/iskng/imessage-exporter"
  version "2.1.1e"

  url "https://github.com/iskng/imessage-exporter/releases/download/#{version}/imessage-exporter"
  sha256 "1d54c7615c2fa4e45be7599d9d994b1511d4ad517a6279baa2ced7c88f3fb28a"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "imessage-exporter" => "msgexp"
  end

  test do
    system "#{bin}/msgexp", "--version"
  end
end 