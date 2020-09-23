#!/usr/bin/ksh
#set -x
### =======================================================================================
### DESCRIPTION:	Generic Decrypt scrypt to decrypt file(s) in the specified folder.
###			The HOME_DIR should point to the folder where the file(s) reside.
### =======================================================================================


# Directory where the scipt will reside and search for *.pgp files to decrypt
HOME_DIR=

#

for n in $HOME_DIR/*; do
  OUT_FNAME=${n:0:${#n} - 4}
  # echo "$n"
  echo "Decrypting: $n"
  echo "Out file: $OUT_FNAME"
  #gpg -o $OUT_FNAME --decrypt $n
  echo HCSCKEY1 | gpg --batch --yes --passphrase-fd 0 $n
done

for n in *.gpg; do
  OUT_FNAME=${n:0:${#n} - 4}
  # echo "$n"
  echo "Decrypting: $n"
  echo "Out file: $OUT_FNAME"
  gpg -o $OUT_FNAME --decrypt $n

done
