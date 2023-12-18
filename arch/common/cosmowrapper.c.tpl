$return_type $function_name($parameters) {
  if (IsWindows()) {
    return ${function_name}_nt($parameter_names);
  }
  return ${function_name}_sysv($parameter_names);
}

