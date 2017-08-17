
img = imread('./colorwheel_old/colorWheelDark_0.png');
kk
imgtemp = zeros(size(img(:,:,1)));
m = 255;
logimg = zeros(size(img),'double');

% a = m/sqrt(m);
% 
% for i = 1:3
%     imgtemp = double(img(:,:,i));
%     imgtemp = a*sqrt(imgtemp);
%     logimg(:,:,i) = imgtemp;
% end
% 
% imagesc(logimg);
% 
%     
    figure('units','normalized','outerposition',[0.1 0.1 0.8 0.8]);
    subplot(1,2,1)
    imagesc(img); impixelinfo
    das
% for j = 2:8
    
    b = 1e-2;
    a = m/log(b*m+1);

    c = 1;


    for i = 1:3
    %     figure
        imgtemp = double(img(:,:,i));
    %     imgtemp = imgtemp./2;
    %     imagesc(imgtemp)

        imgtemp = a*log(b*imgtemp+c);
        logimg(:,:,i) = imgtemp;
    end
    
        subplot(1,2,2)

%     subplot(2,4,j)
    imagesc(uint8(logimg))
    das
    impixelinfo
    
    imwrite(uint8(logimg),'log_colour2e-2.png')
%     title(sprintf('%d',((j*0.5))))
% 
%     
%     
% end
% 
%     figure('units','normalized','outerposition',[0.1 0.1 0.8 0.8]);
%     subplot(1,2,1)
%     imagesc(img); impixelinfo
%     das
%     subplot(1,2,2)
%     imagesc(uint8(logimg))
%     das
%     impixelinfo

    