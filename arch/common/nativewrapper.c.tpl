${function_name}Return_t *${function_name}_wrapper(${function_name}Params_t *${function_name}params) {
  static ${function_name}Return_t ret;
  ret.r = ${function_name}(${parameter_names});
  return &ret;
}

