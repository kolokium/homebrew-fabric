class HyperledgerFabricCliAT313 < Formula
  desc "Hyperledger Fabric is an enterprise-grade permissioned distributed ledger"
  homepage "https://www.hyperledger.org/use/fabric"
  url "https://github.com/hyperledger/fabric/archive/refs/tags/v3.1.3.tar.gz"
  version "3.1.3"
  sha256 "4362558ee326256e8ac2849293bef9ac880a08316a238ce8a9bc1d2ccd3e19fc"
  license "Apache-2.0"

  def install
    system "./scripts/install-fabric.sh", "-f", "3.1.3", "binary"
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
