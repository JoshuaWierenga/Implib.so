typedef ${function_name}Return_t *(*p${function_name}_wrapper_win)(${function_name}Params_t *);
p${function_name}_wrapper_win ${function_name}_wrapper_win;

${return_type} ${function_name}(${parameters}) {
  ${function_name}Params_t params = {${parameter_names}};
  ${function_name}Return_t ret;
  if (IsWindows()) {
    ret = *${function_name}_wrapper_win(&params);
  } else {
    ret = *${function_name}_wrapper(&params);
  }
  return ret.r;
}

