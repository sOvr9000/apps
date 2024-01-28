

using ArgParse



function parse_command()
    s = ArgParseSettings()
    @add_arg_table s begin
        "--from-f"
            help = "Degrees in Fahrenheit"
            arg_type = Float64
        "--from-c"
            help = "Degrees in Celsius"
            arg_type = Float64
        "--from-k"
            help = "Degrees in Kelvin"
            arg_type = Float64
        "--to-f"
            help = "convert to Fahrenheit"
            action = :store_true
        "--to-c"
            help = "convert to Celsius"
            action = :store_true
        "--to-k"
            help = "convert to Kelvin"
            action = :store_true
    end

    return parse_args(s)
end

function main()
    parsed_args = parse_command()
    
end

main()

