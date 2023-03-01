# Regenerating SQL SVGs

The scripts in this folder are used to regenerate the images found in the /img/sql/ folder.

## Before you begin

* Install python3
* Install `npn` if not already installed
* Install `pip` or `conda` if not already installed
* Clone `/featurebase-docs`

## Step 1 - install dependencies

Use `pip` or `conda` to install dependencies.

* CD to the `/usr` directory.
* run the following commands:

| Dependency | Directory | Command |
|---|---|
| `ebnf2railroad` | `sudo npm install -g ebnf2railroad` |
| `bs4` | `[pip|conda] install bs4` |
| `lxml` | `[pip|conda] install lxml` |

## Step 2 - generate the sql3.html file

Run the `makebnf` script to generate the sql3.html file:

```
bash ./makebnf.sh
```

NOTE: The build script may report `missing reference...` before reporting success, e.g., `📜 Document created at ./sql3.html`

## Step 3 - Extract the images from the sql3.html file

Run the python extract script to generate the images described in the sql3.html file:

```
python extract.py`
```

NOTE: You can also run `python3 extract.py` if required.

## Step 4 - Validate images in destination folder



All done! Go validate the images have been properly updated in the /img/sql folder.
