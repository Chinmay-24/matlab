V = [1 1 0; 1 0 1; 0 1 1]';
num_vectors = size(V, 2);
% Initialize matrices
U = zeros(size(V)); % Orthogonal vectors
E = zeros(size(V)); % Orthonormal vectors
% Gram-Schmidt Process
U(:,1) = V(:,1);
E(:,1) = U(:,1) / norm(U(:,1));
for i = 2:num_vectors
    U(:,i) = V(:,i);
    for j = 1:i-1
        U(:,i) = U(:,i) - (dot(V(:,i), E(:,j)) * E(:,j)); % Orthogonalization
    end
    E(:,i) = U(:,i) / norm(U(:,i)); % Orthonormalization
end
% Plotting
figure; hold on; grid on; axis equal;
colors = ['r','g','b'];
% Plot original vectors
for i = 1:num_vectors
    quiver3(0,0,0, V(1,i), V(2,i), V(3,i), colors(i), 'LineWidth',2,'MaxHeadSize',0.5);
    text(V(1,i), V(2,i), V(3,i), ['V' num2str(i)], 'FontSize',12, 'FontWeight','bold');
end
% Plot orthogonal vectors (U)
offsetU = 0.05;
for i = 1:num_vectors
    quiver3(offsetU, offsetU, offsetU, U(1,i), U(2,i), U(3,i), [colors(i) '-.'], 'LineWidth',2,'MaxHeadSize',0.5);
    text(U(1,i)+offsetU, U(2,i)+offsetU, U(3,i)+offsetU, ['U' num2str(i)], 'FontSize',12, 'FontWeight','bold');
end
% Plot orthonormal vectors (E)
offsetE = 0.1;
for i = 1:num_vectors
    quiver3(offsetE, offsetE, offsetE, E(1,i), E(2,i), E(3,i), [colors(i) '--'], 'LineWidth',2,'MaxHeadSize',0.5);
    text(E(1,i)+offsetE, E(2,i)+offsetE, E(3,i)+offsetE, ['E' num2str(i)], 'FontSize',12, 'FontWeight','bold');
end
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Original, Orthogonal, and Orthonormal Vectors');
legend('V1','V2','V3','U1','U2','U3','E1','E2','E3');
view(3);
hold off;
