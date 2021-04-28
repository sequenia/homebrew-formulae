class ProjectGenrated < Formula
  desc 'Tool for project genrated for xcode'
  homepage 'https://github.com/sequenia/generate-project.git'
  url 'https://github.com/sequenia/generate-project.git', tag: '0.1'
  version '0.1'
  license 'MIT'

  depends_on xcode: ['10.0', :build]

  def install
    system 'make', 'build'
    bin.install '.build/release/projectGenrated'
  end

  test do
    system "#{bin}/projectGenrated gen"
  end
end
