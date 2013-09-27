-define(json_obj_to_record(RecName, JSON),
    hello2_json:object_to_record(RecName, record_info(fields, RecName), record_info(size, RecName), #RecName{}, JSON)).
-define(json_obj_into_record(RecName, Defaults, JSON),
    hello2_json:object_to_record(RecName, record_info(fields, RecName), record_info(size, RecName), Defaults, JSON)).
-define(record_to_json_obj(RecName, Tup),
    hello2_json:record_to_object(RecName, record_info(fields, RecName), record_info(size, RecName), Tup)).

-record(rpc_method, {
    name              :: atom(),
    params_as = list  :: 'list' | 'proplist',
    description = ""  :: string()
}).

-record(rpc_param, {
    name               :: atom(),
    type = any         :: hello2_validate:param_type(),
    optional = false   :: boolean(),
    default            :: term(),
    description = ""   :: string()
}).

-record(rpc_bulk, {
    reuse              :: atom(),
    except             :: [atom()],
    name               :: atom(),
    description = ""   :: string()
}).