class Tracecli < Formula
  desc "Query past Trace meetings and control the app from the command line"
  homepage "https://traceapp.info"
  version "1.0.0"
  url "https://github.com/trace-app-mac/homebrew-tap/releases/download/tracecli-v1.0.0/tracecli-1.0.0-arm64.tar.gz"
  sha256 "efd2824a56e5bbf4b72274a9e214f721b49430a080eac637dc4dfdec69f4ab10"
  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "tracecli"
  end

  test do
    assert_match "tracecli", shell_output("#{bin}/tracecli --help")
  end
end
