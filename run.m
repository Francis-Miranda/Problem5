
K = 1;
open_system('circuitmodel.slx')
for i =0:1:5
    if K ==0
        K = 1;
    else
        K = 0;
    end
    i1 = (i*2)/10e6;
    sim('circuitmodel.slx',10);
    open_system('circuitmodel/Scope');
    pause(8);
end
