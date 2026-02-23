module ACI216


using CSV, Interpolations, DataFrames 


function temperature_within_slab(fire_time, distance_from_fire, concrete_type)

    if concrete_type == "siliceous"

        data = CSV.read("./assets/figure_3_data.csv", DataFrame)

    end


    #grab two curves that bound distance_from_fire 

    #go find 3/8 curve 
    #make interpolation model 
    #get temperature at fire_time, T1

    #go find 9/16 curve 
    #make interpolation model 
    #get temperature at fire_time, T2 


    #make one more interpolation between these two curves 
    [3/8, 9/16]
    [T1, T2]
    #get final T 

    interpolation_model = linear_interpolation(data.time, data.temperature)

    concrete_temperature = interpolation_model(fire_time)

    return concrete_temperature

end


end # module ACI216
