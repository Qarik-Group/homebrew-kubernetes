require "FileUtils"

class Knctl < Formula
  homepage "https://github.com/starkandwayne/eden"

  v = "v0.0.8" # CI Managed
  url "https://github.com/cppforlife/knctl/releases/download/#{v}/knctl-darwin-amd64"
  version v
  sha256 "e4ac6d65170c41738990d8aff5854df587c863edeaa442fc1ffa43f1753a8183" # CI Managed

  def install
    FileUtils.mv("knctl-darwin-amd64", "knctl")
    bin.install "knctl"
  end

  test do
    system "#{bin}/knctl", "version"
  end
end
