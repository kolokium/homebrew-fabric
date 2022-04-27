# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class HyperledgerFabricCli < Formula
  desc ""
  homepage ""
  url "https://github.com/hyperledger/fabric/archive/refs/tags/v2.4.3.tar.gz"
  sha256 "117ab5f6d4433c6094c1c136a73014897dea86e0411b42d3c2b60bc36713dc45"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./scripts/bootstrap.sh", "-d", "-s"
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
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test hyperledger-fabric-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
