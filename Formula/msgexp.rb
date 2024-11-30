class Msgexp < Formula
  desc "Tool to export iMessage data and run iMessage diagnostics"
  homepage "https://github.com/iskng/imessage-exporter"
  version "2.1.1b"

  url "https://github.com/iskng/imessage-exporter/releases/download/#{version}/imessage-exporter"
  sha256 "bcf1d68404a52f56314858acd1bb25dbaab4823d88753953ec46a9e584a95317"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "imessage-exporter" => "msgexp"
  end

  test do
    system "#{bin}/msgexp", "--version"
  end
end 