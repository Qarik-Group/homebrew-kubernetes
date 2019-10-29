require "FileUtils"

class KpackLogs < Formula
  homepage "https://github.com/pivotal/kpack"

  v = "v0.0.5" # CI Managed
  url "https://github.com/pivotal/kpack/releases/download/#{v}/logs-#{v}-darwin.tgz"
  version v
  sha256 "c9372932db2e8ab04f2a0a4adf912e598ee4deba3ce40a45212e9ac6a542edb0" # CI Managed

  def install
    bin.install "logs"
  end

  test do
    system "#{bin}/logs", "version"
  end
end
