class ODIG < Formula
    version "v0.8.6"
    desc "Optimized dynamic genome/graph implementation (odgi)"
    homepage "https://github.com/pangenome/odgi"
    url "https://github.com/pangenome/odgi/archive/refs/tags/v0.8.6.tar.gz"
    sha256 "ae95130f95232a5bd65f46b02643bde9172aa8597cc9010f5202ca182a22f264"
    license "MIT"
  
    depends_on "cmake"
    depends_on "jemalloc"
    depends_on "libomp"
    depends_on "llvm"
  
    def install
      system 'CC=$(brew --prefix llvm)/bin/clang CXX=$(brew --prefix llvm)/bin/clang++ LDFLAGS=-L/opt/homebrew/lib cmake -H. -DCMAKE_BUILD_TYPE=Debug -Bbuild'
      system 'CC=$(brew --prefix llvm)/bin/clang CXX=$(brew --prefix llvm)/bin/clang++ LDFLAGS=-L/opt/homebrew/lib cmake --build build -- -j'
      bin.install "bin/odgi"
    end
  end
  