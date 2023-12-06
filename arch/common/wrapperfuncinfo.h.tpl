typedef struct {
  $fields
} ${function_name}Params_t;

typedef struct {
  ${return_type} r;
} ${function_name}Return_t;

${function_name}Return_t *${function_name}_wrapper(${function_name}Params_t *);

