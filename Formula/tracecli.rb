class Tracecli < Formula
  desc "Query past Trace meetings and control the app from the command line"
  homepage "https://traceapp.info"
  version "1.2.0"
  url "https://github.com/trace-app-mac/homebrew-tap/releases/download/tracecli-v1.2.0/tracecli-1.2.0-arm64.tar.gz"
  sha256 "60429f5729bf4cc8c5920a7d51a800949d3e7dc7fe61b5e989339e2860c8acab"
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
