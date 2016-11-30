function ObstacleGrid = placeObstacles(Grid,Obstacles,ObstacleTypes)
    
    [grow,gcol] = size(Grid);
    [rows, columns] = size(Obstacles);
    if columns ~= 3
        disp('Error: Invalid Obstacle Input!')
    else
        ObstacleGrid = Grid;
        for index = 1:1:rows
            type = ObstacleTypes(index); % Type of the shape
            x = Obstacles(index,1); % The x coordinate of initial point
            y = Obstacles(index,2); % The y coordinate of initial point
            s = Obstacles(index,3); % The size of the shape

            if type == 's'
                if x > grow || y > gcol
                    continue;
                else
                    % If print square
                    n = x+s;
                    m = y+s;
                    % Print the top half of the diamond
                    if n > grow
                        % First, the intial point is always in the bound!
                        % If the row or column out of maximum, then just print to 
                        % the bound
                        n = grow+1;
                    end
                    if m > gcol
                        % Vice versa
                        m = gcol+1;
                    end
                    for j = x:1:n-1
                        ObstacleGrid(j,y:1:m-1) = 1;
                    end
                end
            elseif type == 'd'
                if x > grow
                    continue;
                else
                    % If print diamond
                    k = x + s;
                    n = 0;
                    if k > grow
                        % If row is out of maximum, then just print to the bound
                        k = grow;
                    end
                    for j = x:1:k - 1
                        init = y - n;
                        term = y + n;
                        if init < 1
                            % If column is out of minimum, then start printing at 1
                            init = 1;
                        end
                        if term > gcol
                            % If column is out of maximum, then just print to the
                            % bound
                            term = gcol;
                        end
                        ObstacleGrid(j,init:1:term) = 1;
                        n = n + 1;
                    end
                    
                    if k == grow
                        continue;
                    % Print the lower half of the diamond
                    else
                        mid = k;
                        if k + s - 1 > grow
                            % If the row out of maximum, then just print to 
                            % the bound
                            k = grow - s + 1;
                        end
                        n = n - 2; % Cancel the increament in the last loop 
                        for j = mid:1:k+s-1
                            init = y - n;
                            term = y + n;
                            if init < 1
                                % If column is out of minimum, then start printing at 1
                                init = 1;
                            end
                            if term > gcol
                                % If column is out of maximum, then just print to the
                                % bound
                                term = gcol;
                            end
                            n = n - 1;
                            ObstacleGrid(j,init:1:term) = 1;
                        end
                    end
                end
            end
        end
    end