#!/bin/bash

set -euo pipefail

data_dir=emulators.data
firebase_project_id=firebase-auth-emulator

exec firebase emulators:start 2>&1 \
  $([ -d $data_dir ] && echo "--import $data_dir") \
  --project "$firebase_project_id"
