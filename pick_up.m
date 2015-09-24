function [Picked] = pick_up(currentGeneration)
    %Recieves a ascending sorted matrix with fitness and 29 bits of
    %cromosoma value.
    
    num_individues = size(currentGeneration,1);
    %Picks two best ones for next-generation
    
    absolute_best = currentGeneration(num_individues,:);
    second_best = currentGeneration(num_individues-1,:);
    
    num_pickable_individues = num_individues/2-2;   
    Picked = [absolute_best;second_best];
    for i=1:num_pickable_individues
       Picked = [Picked; currentGeneration(num_individues-2-i)];
    end

end