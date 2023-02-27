<<<<<<< HEAD


1. Open a Terminal Window
2. Execute the following command to deactivate the Quarantine flag

```
mv featurebase-*-community-darwin-arm64/ opt
mv idk-*-arm64 idk
=======
1. Open a Terminal Window
2. Run the following command to disable the quarantine flag:

```
xattr -d com.apple.quarantine opt/featurebase
xattr -d com.apple.quarantine idk/*
>>>>>>> main
```
