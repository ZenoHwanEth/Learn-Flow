import BottomShot from 0xf8d6e0586b0a20c7

transaction {
  
  prepare(acct: AuthAccount) {
    acct.save(<- BottomShot.createCollection(), to: /storage/BottomShot2)

      // We're linking two resources in different storage domains and
    acct.link<&BottomShot.Collection{BottomShot.CollectionPublic}> (/public/BottomShot2, target: /storage/BottomShot2)
  }



  execute {
    log("Stored a collection for our NUTTY empty NFTs")
  }
}