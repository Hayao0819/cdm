#!/usr/bin/env bash

install -Dm644 -T README.md "$pkgdir/usr/share/doc/cdm/README"
install -Dm644 -t "$pkgdir/usr/share/cdm/themes" themes/*

install -Dm755 -T src/cdm "$pkgdir/usr/bin/cdm"
install -Dm644 -T src/cdmrc "$pkgdir/etc/cdmrc"
install -Dm755 -T src/profile.sh "$pkgdir/etc/profile.d/zzz-cdm.sh"

