class Tracecli < Formula
  desc "Query past Trace meetings and control the app from the command line"
  homepage "https://traceapp.info"
  version "1.3.0"
  url "https://github.com/trace-app-mac/homebrew-tap/releases/download/tracecli-v1.3.0/tracecli-1.3.0-arm64.tar.gz"
  sha256 "4a5ce4eebbf6e5cf4f7e0187902bd8809c5d485e556894f0ecba16d1ccaf07ad"
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
