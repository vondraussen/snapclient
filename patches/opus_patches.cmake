if(opus_patched)
  return()
endif()

set(orig_file ${PROJECT_SOURCE_DIR}/components/opus/opus/silk/quant_LTP_gains.c)
set(patch_file ${PROJECT_SOURCE_DIR}/patches/0001_fix_opus_uninit_var.patch)


find_program(PATCH NAMES patch REQUIRED)
execute_process(COMMAND ${PATCH} ${orig_file} ${patch_file})

set(opus_patched true CACHE BOOL "source is patched")