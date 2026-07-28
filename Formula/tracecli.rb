class Tracecli < Formula
  desc "Query past Trace meetings and control the app from the command line"
  homepage "https://traceapp.info"
  version "1.4.0"
  url "https://github.com/trace-app-mac/homebrew-tap/releases/download/tracecli-v1.4.0/tracecli-1.4.0-arm64.tar.gz"
  sha256 "a9958fcedcb0898ae56d220f353dd0fb82a05e4f88e5650224692c77636fa686"
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
