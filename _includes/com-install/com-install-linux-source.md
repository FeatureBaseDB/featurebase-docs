### Step 1 - Establish the correct release to install

* Open [FeatureBase releases on GitHub](https://github.com/FeatureBaseDB/FeatureBase/releases){:target="_blank"}
* Make note of the:
  * version (e.g., 3.32.0)
  * kernel (darwin or linux)
  * processor (arm or amd)

### Step 2 - Download the release

You can right-click the appropriate release and download to your `/downloads` directory, or use terminal commands:

* Open a terminal
* CD to the `/downloads` directory
* Use the correct values for `<version>`, `<kernel>` and `<processor>` in the following command:

```
curl -L https://github.com/FeatureBaseDB/featurebase/releases/download/v<version>/featurebase-v<version>-<kernel>-<processor>64.tar.gz -o featurebase.tgz
```

### Step 3: Untar release files

* Open a terminal then create a destination directory for the release:

```
mkdir featurebase
```

* CD to your `/downloads` directory then run the following command:

```
tar xvfz featurebase.tgz -C ~/featurebase
```

### Step 4: Setup application directory

* Move ingester files to the `/opt` directory

```
mv featurebase-* opt
```

* Move application files to the `/idk` directory

```
mv idk-* idk
```
