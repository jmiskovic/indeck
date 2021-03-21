#!/bin/sh
python adb-sync.py  . /sdcard/Android/data/org.indeck.app/files/ --exclude .git
