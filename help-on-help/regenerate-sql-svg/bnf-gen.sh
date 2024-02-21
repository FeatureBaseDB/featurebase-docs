echo "Have you updated sql3.ebnf? (yes/no)"
  read requirements
  if [[ "$requirements" == y* ]]; then
    echo "Generate bnf files"
      bash makebnf.sh
    echo "Extract the svg files"
      python3 extract.py
    echo "List updated svg files in assets folder"
     ls ~/featurebase-docs/assets/images/sql-guide
    echo "Remember to run git commit -a, and git push!"
  else
    echo "Computer says NO."
  fi
