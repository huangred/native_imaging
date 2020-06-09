#!/bin/sh -e
# Copyright (c) 2020 Famedly GmbH
# SPDX-License-Identifier: AGPL-3.0-or-later

cd "$(dirname "$0")"/..
codegen/autojs.jq < lib/native.dart > lib/js.dart
printf '#include "%s"\n' extra.h | gcc -I src -E - | codegen/autoffi.jq > lib/src/ffi.dart