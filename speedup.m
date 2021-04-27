clc
clear all
close all

P = [1, 2, 4, 8, 16, 32, 64];
S = [1, 2.03482944344704, 4.06527977044476, 7.91480446927374,...
    14.8350785340314, 26.2361111111111, 41.6691176470588];
xx = linspace(0,70,1000);

set(groot, "DefaultLineLineWidth", 2)
p(1)=plot(P, S, 'r-s', "DisplayName", "actual (10^6 cells)");
hold on
p(2)=plot(xx, xx, 'k-', "DisplayName", "ideal");
p(3)=plot(xx, 0.8*xx, 'k-.', "DisplayName", "80% efficient");
p(4)=plot(xx, 0.6*xx, 'k--', "DisplayName", "60% efficient");

% title("Speedup vs Processors")
xlabel("Number of Processors, P")
ylabel("Speedup, T(1)/T(P)")
xlim([0,70])
ylim([0,70])
% daspect([1 1 1])
legend()