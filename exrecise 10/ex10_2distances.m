function [distance_array] = ex10_2distances(point, point_array)
    %{
        This script calculates the Euclidean distances between a reference point and an array of points in 3D space.

        Variables:
        - point: A struct representing the reference point with fields 'x', 'y', and 'z'.
        - point_array: A struct representing an array of points with fields 'x', 'y', and 'z'.
        - calc_dist: A function handle that calculates the squared difference between a scalar and an array.
        - x_dist: An array of squared differences in the x-coordinates between the reference point and the array of points.
        - y_dist: An array of squared differences in the y-coordinates between the reference point and the array of points.
        - z_dist: An array of squared differences in the z-coordinates between the reference point and the array of points.
        - distance_array: An array of Euclidean distances between the reference point and each point in the array of points.
    %}
    point = struct('x', point(1), 'y', point(2), 'z', point(3));
    point_array = struct('x', point_array(:, 1), 'y', point_array(:, 2), 'z', point_array(:, 3));
    calc_dist = @(scalar, array) (array - scalar) .^ 2;
    x_dist = calc_dist(point.x, point_array.x);
    y_dist = calc_dist(point.y, point_array.y);
    z_dist = calc_dist(point.z, point_array.z);
    distance_array = sqrt(x_dist + y_dist + z_dist);
end
