function population = generate_new_population (population, N)

    n = size(population);
    n = n(2);
    
    for i=1 : n
       ind_noise = difference_and_mutation (population, i);
       ind_noise = evaluate_individual(ind_noise);
       
       population = select_better_individual(population, i, ind_noise);
       
    end
    
    %Trunca
    population = population(1:N);
    
    %embaralha
    ix = randperm(n);
    population = population(ix); 

end