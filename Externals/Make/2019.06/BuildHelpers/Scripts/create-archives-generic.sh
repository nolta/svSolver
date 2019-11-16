BUILDDATE=`date +%F`

SV_TAR_FILE_PREFIX=REPLACEME_SV_TAR_FILE_PREFIX.${BUILDDATE}

# vtk
if [[ $SV_SUPER_OPTIONS == *ARCHIVE_VTK* ]]; then
  echo "ARCHIVE_VTK"
  pushd REPLACEME_SV_FULLPATH_BINDIR
  REPLACEME_TAR -cvzf $SV_TAR_FILE_PREFIX.REPLACEME_SV_VTK_DIR.tar.gz REPLACEME_SV_VTK_DIR
  popd
  mv REPLACEME_SV_FULLPATH_BINDIR/$SV_TAR_FILE_PREFIX.REPLACEME_SV_VTK_DIR.tar.gz tar_output
fi

pushd tar_output
tclsh ../Scripts/remove-all-dashes-in-name.tcl
popd
