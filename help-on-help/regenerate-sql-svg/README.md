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

The `extract.py` file:
* generates the required bnf `.svg` image files
* saves them to `/help-on-help`

```
python3 extract.py`
```

NOTE: You can also run `python extract.py` if required.

## Step 4 - confirm the images are updated

* CD to `/help-on-help` and confirm the images have been updated.

## Step 4 - Move the svg files to `/assets/images/sql-guide`

* CD to `/help-on-help/regenerate-sql-svg`
* Run the move script:

```
bash ./move-svg-to-images.sh
```
