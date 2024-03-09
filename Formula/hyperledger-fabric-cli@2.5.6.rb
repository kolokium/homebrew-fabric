class HyperledgerFabricCliAT256 < Formula
  desc "Hyperledger Fabric is an enterprise-grade permissioned distributed ledger"
  homepage "https://www.hyperledger.org/use/fabric"
  url "https://github.com/hyperledger/fabric/archive/refs/tags/v2.5.6.tar.gz"
  version "2.5.6"
  sha256 "75687b652084ae5c76fa82a40d56ac1324244fbd80e775435778457465ee4273"
  license "Apache-2.0"

  def install
    system "./scripts/install-fabric.sh", "binary"
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
