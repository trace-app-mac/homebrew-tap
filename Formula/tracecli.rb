class Tracecli < Formula
  desc "Query past Trace meetings and control the app from the command line"
  homepage "https://traceapp.info"
  version "1.2.1"
  url "https://github.com/trace-app-mac/homebrew-tap/releases/download/tracecli-v1.2.1/tracecli-1.2.1-arm64.tar.gz"
  sha256 "f309923eababbee7401db42dfc7ddcb64f842cbfaf0d86e338230ff67c134980"
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
