#!/bin/sh
while inotifywait --outfile error.txt -e modify ${logFilePath}; do
  if tail -n100 ${logFilePath} | grep -a 'ERROR\|exception\|Exception\|null'; then
	res=$(tail -n 100 ${logFilePath})
	echo $res > error.txt 
        echo "${Body}" | mutt -a error.txt -s "${subject}" -- ${receiverEmailAddress}
  fi
done
