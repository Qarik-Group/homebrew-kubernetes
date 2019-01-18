require "FileUtils"

class Kwt < Formula
  homepage "https://github.com/cppforlife/kwt"

  v = "v0.0.5" # CI Managed
  url "https://github.com/cppforlife/kwt/releases/download/#{v}/kwt-darwin-amd64"
  version v
  sha256 "114adb8b4f80e2f20c008fd2d4695641b5228c4c4525a50f1191558b29335494" # CI Managed

  def install
    FileUtils.mv("kwt-darwin-amd64", "kwt")
    bin.install "kwt"
  end

  test do
    system "#{bin}/kwt", "version"
  end
end
