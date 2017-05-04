function individual = evaluate_individual (individual)
    
    y1 = f1(individual);
    y2 = f2(individual);
    
    individual.y1 = y1;
    individual.y2 = y2;
    
end

function y = f1(individual)
    y = individual.x ^ 2;
end

function y = f2(individual)
    y = (individual.x - 2) ^ 2;
end 