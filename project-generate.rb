class ProjectGenerate < Formula
  desc 'Tool for project generate for xcode'
  homepage 'https://github.com/sequenia/generate-project.git'
  url 'https://github.com/sequenia/generate-project.git', tag: '0.1.4'
  version '0.1.4'
  license 'MIT'

  depends_on xcode: ['10.0', :build]

  def install
    system 'make', 'build'
    bin.install '.build/release/project-generate'
  end

  test do
    system "#{bin}/project-generate gen"
  end
end
