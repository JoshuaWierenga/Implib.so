extern typeof($function_name) real_$function_name;
typeof($function_name) __attribute__((ms_abi)) *${function_name}_nt = (typeof(${function_name}_nt))real_$function_name;
typeof($function_name) __attribute__((sysv_abi)) *${function_name}_sysv = (typeof(${function_name}_sysv))real_$function_name;

