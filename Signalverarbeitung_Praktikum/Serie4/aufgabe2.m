k = [0:3];
t = [0:0.01:0.99];

harm_matrix = harm(k,t);

xlim([-1.3 1.3] )
ylim([-1.3 1.3])

for n = 1:length(t)
    
    subplot(2,4,1)
    plot([0 imag(harm_matrix(1,n))],[0 real(harm_matrix(1,n))],'-*')
    xlim([-1.3 1.3] )
    ylim([-1.3 1.3])
    subplot(2,4,2)
    plot([0 imag(harm_matrix(2,n))],[0 real(harm_matrix(2,n))],'-*')
    xlim([-1.3 1.3] )
    ylim([-1.3 1.3])
    subplot(2,4,3)
    plot([0 imag(harm_matrix(3,n))],[0 real(harm_matrix(3,n))],'-*')
     xlim([-1.3 1.3] )
    ylim([-1.3 1.3])
    subplot(2,4,4)
    plot([0 imag(harm_matrix(4,n))],[0 real(harm_matrix(4,n))],'-*')
     xlim([-1.3 1.3] )
    ylim([-1.3 1.3])
    
    subplot(2,4,5)
    plot([0 real(harm_matrix(1,n))],[0 0],'r-')
    hold on
    plot([0 0],[0 imag(harm_matrix(1,n))],'b-')
     xlim([-1.3 1.3] )
    ylim([-1.3 1.3])
    hold off
    subplot(2,4,6)
    plot([0 real(harm_matrix(2,n))],[0 0],'r-')
    hold on
    plot([0 0],[0 imag(harm_matrix(2,n))],'b-')
     xlim([-1.3 1.3] )
    ylim([-1.3 1.3])
    hold off
    subplot(2,4,7)
    plot([0 real(harm_matrix(3,n))],[0 0],'r-')
    hold on 
    plot([0 0],[0 imag(harm_matrix(3,n))],'b-')
     xlim([-1.3 1.3] )
    ylim([-1.3 1.3])
    hold off
    subplot(2,4,8)
    plot([0 real(harm_matrix(4,n))],[0 0],'r-')
    hold on
    plot([0 0],[0 imag(harm_matrix(4,n))],'b-')
     xlim([-1.3 1.3] )
    ylim([-1.3 1.3])
    hold off
    
    
    pause(1)
    
end

