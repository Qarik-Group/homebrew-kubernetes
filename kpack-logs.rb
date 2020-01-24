require "FileUtils"

class KpackLogs < Formula
  homepage "https://github.com/pivotal/kpack"

  v = "v0.0.6" # CI Managed
  url "https://github.com/pivotal/kpack/releases/download/#{v}/logs-#{v}-darwin.tgz"
  version v
  sha256 "380122fffec137970913bdc625ac2a0d8aa9a2f0a78d1557f34aed7d6cb75582" # CI Managed

  def install
    bin.install "logs"
  end

end
