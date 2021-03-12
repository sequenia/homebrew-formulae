class FigmaExport < Formula
  desc "Tool for exporting resources from Figma: icons, colors, fonts"
  homepage "https://github.com/sequenia/figma-export"
  url "https://github.com/sequenia/figma-export.git", tag: "0.22.0"
  version "0.22.0"
  license "MIT"

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/figma-export colors"
  end
end