function [distance_array] = ex10_2distances(point, point_array)
    point = struct('x', point(1), 'y', point(2), 'z', point(3));
    point_array = struct('x', point_array(:, 1), 'y', point_array(:, 2), 'z', point_array(:, 3));
    calc_dist = @(scalar, array) (array - scalar) .^ 2;
    x_dist = calc_dist(point.x, point_array.x);
    y_dist = calc_dist(point.y, point_array.y);
    z_dist = calc_dist(point.z, point_array.z);
    distance_array = sqrt(x_dist + y_dist + z_dist);
end
