#!/bin/bash
set -eux
cd /opt/steam/apps/Synergy/bin
mv libtier0.so libtier0.so.bak
ln -s libtier0_srv.so libtier0.so
mv libvstdlib.so libvstdlib.so.bak
ln -s libvstdlib_srv.so libvstdlib.so
mv vphysics.so vphysics.so.bak
ln -s vphysics_srv.so vphysics.so
mv studiorender.so studiorender.so.bak
ln -s studiorender_srv.so studiorender.so
mv soundemittersystem.so soundemittersystem.so.bak
ln -s soundemittersystem_srv.so soundemittersystem.so
mv shaderapiempty.so shaderapiempty.so.bak
ln -s shaderapiempty_srv.so shaderapiempty.so
mv scenefilecache.so scenefilecache.so.bak
ln -s scenefilecache_srv.so scenefilecache.so
mv materialsystem.so materialsystem.so.bak
ln -s materialsystem_srv.so materialsystem.so
mv engine.so engine.so.bak
ln -s engine_srv.so engine.so