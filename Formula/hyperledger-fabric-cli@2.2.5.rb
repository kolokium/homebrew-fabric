class HyperledgerFabricCliAT225 < Formula
  desc "Hyperledger Fabric is an enterprise-grade permissioned distributed ledger"
  homepage "https://www.hyperledger.org/use/fabric"
  url "https://github.com/hyperledger/fabric/archive/refs/tags/v2.2.5.tar.gz"
  version "2.2.5"
  sha256 "aba2ccee8fe5ee019cd8fa110c611c66d4754ac3d48a7226d8b46aeb784cea37"
  license "Apache-2.0 License"

  def install
    system "./scripts/bootstrap.sh", "-d", "-s"
    bin.install "bin/configtxgen"
    bin.install "bin/configtxlator"
    bin.install "bin/cryptogen"
    bin.install "bin/discover"
    bin.install "bin/fabric-ca-client"
    bin.install "bin/fabric-ca-server"
    bin.install "bin/orderer"
    bin.install "bin/peer"
  end

  test do
    system "test", "-e", "#{bin}/configtxgen"
    system "test", "-e", "#{bin}/configtxlator"
    system "test", "-e", "#{bin}/cryptogen"
    system "test", "-e", "#{bin}/discover"
    system "test", "-e", "#{bin}/fabric-ca-client"
    system "test", "-e", "#{bin}/fabric-ca-server"
    system "test", "-e", "#{bin}/orderer"
    system "test", "-e", "#{bin}/peer"
  end
end
