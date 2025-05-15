class HyperledgerFabricCliAT311 < Formula
  desc "Hyperledger Fabric is an enterprise-grade permissioned distributed ledger"
  homepage "https://www.hyperledger.org/use/fabric"
  url "https://github.com/hyperledger/fabric/archive/refs/tags/v3.1.1.tar.gz"
  version "3.1.1"
  sha256 "804ac15ca851952bfea73438ca5ae611c62baa327bca32f8269ed030e2367bbc"
  license "Apache-2.0"

  def install
    system "./scripts/install-fabric.sh", "-f", "3.1.1", "binary"
    bin.install "bin/configtxgen"
    bin.install "bin/configtxlator"
    bin.install "bin/cryptogen"
    bin.install "bin/discover"
    bin.install "bin/fabric-ca-client"
    bin.install "bin/fabric-ca-server"
    bin.install "bin/ledgerutil"
    bin.install "bin/orderer"
    bin.install "bin/osnadmin"
    bin.install "bin/peer"
  end

  test do
    system "test", "-e", "#{bin}/configtxgen"
    system "test", "-e", "#{bin}/configtxlator"
    system "test", "-e", "#{bin}/cryptogen"
    system "test", "-e", "#{bin}/discover"
    system "test", "-e", "#{bin}/fabric-ca-client"
    system "test", "-e", "#{bin}/fabric-ca-server"
    system "test", "-e", "#{bin}/ledgerutil"
    system "test", "-e", "#{bin}/orderer"
    system "test", "-e", "#{bin}/osnadmin"
    system "test", "-e", "#{bin}/peer"
  end
end
