class ShopotamFigmaExport < Formula
    desc 'Tool for exporting resources from Figma: icons, colors, fonts'
    homepage 'https://github.com/sequenia/shopotam-figma-export'
    url 'https://github.com/sequenia/shopotam-figma-export.git', tag: '0.41.1'
    version '0.41.1'
    license 'MIT'
  
    depends_on xcode: ['14.0', :build]
  
    def install
      `make build`
      bin.install '.build/release/shopotam-figma-export'
    end
  
    test do
      system "#{bin}/shopotam-figma-export colors"
    end
  end
  
