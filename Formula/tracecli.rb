class Tracecli < Formula
  desc "Query past Trace meetings and control the app from the command line"
  homepage "https://traceapp.info"
  version "1.6.0"
  url "https://github.com/trace-app-mac/homebrew-tap/releases/download/tracecli-v1.6.0/tracecli-1.6.0-arm64.tar.gz"
  sha256 "ea332e94f5c6b1b6f0bc5b8ba1c3f2d40153ddb28ef7d6f180ae3708f5569d9d"
  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "tracecli"
    # Generates and installs bash/zsh/fish completions by running
    #  at install time.
    generate_completions_from_executable(bin/"tracecli", "completion")
  end

  test do
    assert_match "tracecli", shell_output("#{bin}/tracecli --help")
  end
end
