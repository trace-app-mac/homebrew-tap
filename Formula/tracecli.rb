class Tracecli < Formula
  desc "Query past Trace meetings and control the app from the command line"
  homepage "https://traceapp.info"
  version "1.3.1"
  url "https://github.com/trace-app-mac/homebrew-tap/releases/download/tracecli-v1.3.1/tracecli-1.3.1-arm64.tar.gz"
  sha256 "b466d8965674c64bd6ceb7215dd25b5cb9ec55315b6a99c7e06101b8ac9475c4"
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
