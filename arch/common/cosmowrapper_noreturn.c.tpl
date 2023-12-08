typedef void (*p${function_name}_wrapper_win)(${function_name}Params_t *);
p${function_name}_wrapper_win ${function_name}_wrapper_win;

void ${function_name}(${parameters}) {
  ${function_name}Params_t params = {${parameter_names}};
  if (IsWindows()) {
    ${function_name}_wrapper_win(&params);
  } else {
    ${function_name}_wrapper(&params);
  }
}

