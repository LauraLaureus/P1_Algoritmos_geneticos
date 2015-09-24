function genetic_algoritm(size,maxIterations,imagePath)
%%Plots best fitness per generation

    %Init vars
    max_fitness_per_generation = zeros(1,maxIterations);
    x = 1:1:maxIterations+1;
    Pop = Inicializa_poblacion(size);
    
    img = imread(imagePath);
    I = im2bw(img,0.5);
    BW = edge(I,'canny'); %use edge detection (options 'sobel'(más ruidoso) 'canny'(menos ruidoso))
    figure;
    imshow(BW);
    
    for i=1:maxIterations+1 %FutureDebug-hint001: remove "1"
        pop_fitness = fitness(Pop,BW); 
        %some sort vector
        max_fitness_per_generation(i) = pop_fitness(1)
    end
    
    figure;
    hold on;
    plot(x,max_fitness_per_generation);
    axis([1 maxIterations 0 1]);
    hold off;
end