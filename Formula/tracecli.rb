class Tracecli < Formula
  desc "Query past Trace meetings and control the app from the command line"
  homepage "https://traceapp.info"
  version "1.5.0"
  url "https://github.com/trace-app-mac/homebrew-tap/releases/download/tracecli-v1.5.0/tracecli-1.5.0-arm64.tar.gz"
  sha256 "e89e67971eacf9559303b44f3cb580f8f70ea43bb065eae1c058ea2c66b7f9dc"
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
