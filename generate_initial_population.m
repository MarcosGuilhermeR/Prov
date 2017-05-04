function [ population_r ] = generate_initial_population( N)

    population_r(1,N) = Individual();
    
     for i=1 : N
            n = randi(34)-17;
            population_r(i).x = n;
     end
     
     
end 