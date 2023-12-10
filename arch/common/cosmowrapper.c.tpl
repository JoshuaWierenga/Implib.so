${return_type} ${function_name}(${parameters}) {
  ${function_name}Params_t params = {${parameter_names}};
  ${function_name}Return_t ret;
  ret = *${function_name}_wrapper(&params);
  return ret.r;
}

