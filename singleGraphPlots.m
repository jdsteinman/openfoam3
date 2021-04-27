clc
clear all
close all

path = "./serial/post/Nx8/singleGraph/4/";
paths = ["./serial/post/Nx1/singleGraph/4/";
    "./serial/post/Nx2/singleGraph/4/";
    "./serial/post/Nx4/singleGraph/4/";
    "./serial/post/Nx8/singleGraph/4/"];
labels = ["Nx1","Nx2","Nx4","Nx8"];
files = ["inlet", "stepFace", "stepHorizontal", "topWall"];

set(groot, "DefaultLineLineWidth", 2)
figure()
for i=1:4
    for j=1:4
        fname = paths(j)+files(i)+"_p.xy";
        tab = readtable(fname, "FileType", "text");
        x = tab.(1);
        y = tab.(2);
        p = tab.(4);

%         subplot(2,2,i)
        figure(i)
        if (files(i)=="stepFace")
            plot(y, p, "DisplayName", labels(j))
            title(files(i))
            ylabel("Pressure, P")
            xlabel("y position")
            xlim([0 0.2])
        else
            plot(x, p, "DisplayName", labels(j))
            title(files(i))
            xlabel("x position")
            ylabel("Pressure, P")
        end
        hold on
    end
    hold off
    legend()
end