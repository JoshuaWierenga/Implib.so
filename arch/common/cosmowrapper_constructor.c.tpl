  *(void **)(&${function_name}_wrapper_win) = cosmo_dlsym(handle, "${function_name}_wrapper");
  if (!${function_name}_wrapper_win) {
    tinyprint(2, cosmo_dlerror(), "\n", NULL);
    exit(1);
  }

