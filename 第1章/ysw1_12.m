clc,clear,close all
warning off
% The Modification is from "canon", not by me
fs = 44100; % sample rate
 dt = 1/fs;
T16 = 0.125;
t16 = [0:dt:T16];
 [temp k] = size(t16);
t4 = linspace(0,4*T16,4*k);
 t8 = linspace(0,2*T16,2*k);
[temp i] = size(t4);
 [temp j] = size(t8);
         
 % Modification functions
 mod4=(t4.^4).*exp(-30*(t4.^0.5));
 mod4=mod4*(1/max(mod4));
 mod8=(t8.^4).*exp(-50*(t8.^0.5));
 mod8=mod8*(1/max(mod8));
 mod16=(t16.^4).*exp(-90*(t16.^0.5));
 mod16=mod16*(1/max(mod16));
         
 f0 = 2*146.8; % reference frequency
         
 ScaleTable = [2/3 3/4 5/6 15/16 ...
 1 9/8 5/4 4/3 3/2 5/3 9/5 15/8 ...
 2 9/4 5/2 8/3 3 10/3 15/4 4 ...
 1/2 9/16 5/8];
         
 % 1/4 notes
 do0f = mod4.*cos(2*pi*ScaleTable(21)*f0*t4);
 re0f = mod4.*cos(2*pi*ScaleTable(22)*f0*t4);
 mi0f = mod4.*cos(2*pi*ScaleTable(23)*f0*t4);
         
 fa0f = mod4.*cos(2*pi*ScaleTable(1)*f0*t4);
 so0f = mod4.*cos(2*pi*ScaleTable(2)*f0*t4);
 la0f = mod4.*cos(2*pi*ScaleTable(3)*f0*t4);
 ti0f = mod4.*cos(2*pi*ScaleTable(4)*f0*t4);
 do1f = mod4.*cos(2*pi*ScaleTable(5)*f0*t4);
 re1f = mod4.*cos(2*pi*ScaleTable(6)*f0*t4);
 mi1f = mod4.*cos(2*pi*ScaleTable(7)*f0*t4);
 fa1f = mod4.*cos(2*pi*ScaleTable(8)*f0*t4);
 so1f = mod4.*cos(2*pi*ScaleTable(9)*f0*t4);
 la1f = mod4.*cos(2*pi*ScaleTable(10)*f0*t4);
 tb1f = mod4.*cos(2*pi*ScaleTable(11)*f0*t4);
 ti1f = mod4.*cos(2*pi*ScaleTable(12)*f0*t4);
 do2f = mod4.*cos(2*pi*ScaleTable(13)*f0*t4);
 re2f = mod4.*cos(2*pi*ScaleTable(14)*f0*t4);
 mi2f = mod4.*cos(2*pi*ScaleTable(15)*f0*t4);
 fa2f = mod4.*cos(2*pi*ScaleTable(16)*f0*t4);
 so2f = mod4.*cos(2*pi*ScaleTable(17)*f0*t4);
 la2f = mod4.*cos(2*pi*ScaleTable(18)*f0*t4);
 ti2f = mod4.*cos(2*pi*ScaleTable(19)*f0*t4);
 do3f = mod4.*cos(2*pi*ScaleTable(20)*f0*t4);
 blkf = zeros(1,i);
         
 % 1/8 notes
 do0e = mod8.*cos(2*pi*ScaleTable(21)*f0*t8);
 re0e = mod8.*cos(2*pi*ScaleTable(22)*f0*t8);
 mi0e = mod8.*cos(2*pi*ScaleTable(23)*f0*t8);
         
 fa0e = mod8.*cos(2*pi*ScaleTable(1)*f0*t8);
 so0e = mod8.*cos(2*pi*ScaleTable(2)*f0*t8);
 la0e = mod8.*cos(2*pi*ScaleTable(3)*f0*t8);
 ti0e = mod8.*cos(2*pi*ScaleTable(4)*f0*t8);
 do1e = mod8.*cos(2*pi*ScaleTable(5)*f0*t8);
 re1e = mod8.*cos(2*pi*ScaleTable(6)*f0*t8);
 mi1e = mod8.*cos(2*pi*ScaleTable(7)*f0*t8);
 fa1e = mod8.*cos(2*pi*ScaleTable(8)*f0*t8);
 so1e = mod8.*cos(2*pi*ScaleTable(9)*f0*t8);
 la1e = mod8.*cos(2*pi*ScaleTable(10)*f0*t8);
 tb1e = mod8.*cos(2*pi*ScaleTable(11)*f0*t8);
 ti1e = mod8.*cos(2*pi*ScaleTable(12)*f0*t8);
 do2e = mod8.*cos(2*pi*ScaleTable(13)*f0*t8);
 re2e = mod8.*cos(2*pi*ScaleTable(14)*f0*t8);
 mi2e = mod8.*cos(2*pi*ScaleTable(15)*f0*t8);
 fa2e = mod8.*cos(2*pi*ScaleTable(16)*f0*t8);
 so2e = mod8.*cos(2*pi*ScaleTable(17)*f0*t8);
 la2e = mod8.*cos(2*pi*ScaleTable(18)*f0*t8);
 ti2e = mod8.*cos(2*pi*ScaleTable(19)*f0*t8);
 do3e = mod8.*cos(2*pi*ScaleTable(20)*f0*t8);
 blke = zeros(1,j);
         
 % 1/16 notes
 do0s = mod16.*cos(2*pi*ScaleTable(21)*f0*t16);
 re0s = mod16.*cos(2*pi*ScaleTable(22)*f0*t16);
 mi0s = mod16.*cos(2*pi*ScaleTable(23)*f0*t16);
         
 fa0s = mod16.*cos(2*pi*ScaleTable(1)*f0*t16);
 so0s = mod16.*cos(2*pi*ScaleTable(2)*f0*t16);
 la0s = mod16.*cos(2*pi*ScaleTable(3)*f0*t16);
 ti0s = mod16.*cos(2*pi*ScaleTable(4)*f0*t16);
 do1s = mod16.*cos(2*pi*ScaleTable(5)*f0*t16);
 re1s = mod16.*cos(2*pi*ScaleTable(6)*f0*t16);
 mi1s = mod16.*cos(2*pi*ScaleTable(7)*f0*t16);
 fa1s = mod16.*cos(2*pi*ScaleTable(8)*f0*t16);
 so1s = mod16.*cos(2*pi*ScaleTable(9)*f0*t16);
 la1s = mod16.*cos(2*pi*ScaleTable(10)*f0*t16);
 tb1s = mod16.*cos(2*pi*ScaleTable(11)*f0*t16);
 ti1s = mod16.*cos(2*pi*ScaleTable(12)*f0*t16);
 do2s = mod16.*cos(2*pi*ScaleTable(13)*f0*t16);
 re2s = mod16.*cos(2*pi*ScaleTable(14)*f0*t16);
 mi2s = mod16.*cos(2*pi*ScaleTable(15)*f0*t16);
 fa2s = mod16.*cos(2*pi*ScaleTable(16)*f0*t16);
 so2s = mod16.*cos(2*pi*ScaleTable(17)*f0*t16);
 la2s = mod16.*cos(2*pi*ScaleTable(18)*f0*t16);
 ti2s = mod16.*cos(2*pi*ScaleTable(19)*f0*t16);
 do3s = mod16.*cos(2*pi*ScaleTable(20)*f0*t16);
 blks = zeros(1,k);
         
% Melody by Schau_mal 
part0 = [mi1f la0e la0e do1f mi1f ...
 re1e re1s mi1s re1e do1e re1e do1e la0f ...
 mi1f la0e la0e do1f mi1f ...
 so1e re1s mi1s re1e do1e re1e do1e ti0e so0e ...
 mi1f la0e la0e do1f mi1f ...
 re1e re1s mi1s re1e do1e re1e do1e la0e so0e ...
 mi1f la0e la0e do1f mi1f ...
 so1e mi1e blkf blkf blkf ];
         
 part1 = [la0f la0e so0e la0f la0e do1e ...
 do1f re1e do1e la0f la0f ...
 do1f do1e so0e do1e re1e mi1e so1e ...
 so1e mi1e re1f mi1f mi1f ...
 la1e la1e la1e so1e mi1e mi1f do1e ...
 la0e la0e la0e mi1e re1s mi1s re1e re1f ...
 mi1e mi1e so1e mi1e re1e mi1e re1e do1e ...
 la0f so0f la0f la0f];
         
 part2 = [mi1e mi1e so1e mi1e mi1e so1e so1e la1e ... 
do2e la1e so1f la1s do2s la1e la1f ...
 la0f la0e so0e la0f do1f ...
 re1e mi1s re1s do1e re1e mi1f mi1f ...
 la0e la1e la1e so1e re1e mi1s re1s do1e re1e ...
 mi1f mi1f blke blke blkf ...
 do1e la0e la0e do1e re1f so0e so0e ...
 mi1e so1e mi1e re1e do1f do1f ...
 la0e do1e re1e mi1e re1e do1e so0e mi0e ...
 la0f la0f blke blke blkf];
         
 part3 = [la0f la0e so0e la0f do1f ...
 re1e mi1s re1s do1e re1e mi1f mi1f ...
 la0e la1e la1e so1e re1e mi1s re1s do1e re1e ...
 mi1f mi1f blke blke blkf ...
 do1e la0e la0e do1e re1f so0e so0e ...
 mi1e so1e mi1e re1e do1f do1e do1e ...
 la0e do1e re1e mi1e so1e mi1e mi1e so1e ...
 la1f la1f la1f la1f];
         
 part4 = [la1e la1s la1s la1e la1e la1e la1s so1s mi1e re1e ...
 re1e re1s re1s mi1e mi1s so1s mi1e mi1s re1s do1e do1s la0s ...
 la0f la0e so0e la0f la0e do1e ...
 re1e mi1s re1s do1e re1e mi1f mi1f ...
 la1e so1e mi1e re1e so1e mi1e re1e do1e ...
 do1f do1f la0s do1s re1s mi1s re1s do1s la0s do1s];
         
 part5 = [do2e do2s do2s la1e la1s la1s so1e so1s so1s mi1e mi1s mi1s ...
 re1e mi1s re1s do1e la0s so0s la0s so0s do1s re1s mi1s so1s la1s re2s ...
 do2f do2f blks blks blks blks do1e re1e ...
 mi1f mi1f mi1f so1e mi1e ...
 la1f la1f la1e do1e so1e mi1e ...
 re1f re1e re1s re1s re1e re1e do1e re1e ...
 mi1f mi1e mi1s mi1s mi1e re1s do1s ti0e do1s re1s ...
 mi1f mi1f mi1f so1e mi1e ...
 do2f la1f la1f la1e do1e ...
 re1f so1f so1f la1f ...
 ti1f ti1f ti1f ti1f ];
         
 part6 = [blkf blkf mi1e so1e mi1e so1e ...
 mi1f la0e la0s la0s do1f la0e mi1s la0s ...
 do1e do1s do1s re1e do1s re1s mi1f mi1f ...
 mi1f la0e la0s la0s so1f re1e re1s re1s ...
 mi1f mi1f mi1s re1s do1s la0s mi0s re0s mi0s so0s ...
 do1f la0e la0s la0s re1f so0e so0s so0s ...
 mi0f so0e so0s so0s do1f do1f ...
 la0f do1e do1s la0s mi1e mi1s mi1s re1e re1s mi1s];
         
 % Combination, v1 is complete version, v2 is simple version.
 v1 = [part0 part1 part1 part2 part3 part4 part0 part1 part1 part2 part3 part5 part3 part6 part3];
 v2 = [part0 part1 part1 part2 part3 part5 part3 part6 part3];
         
% Let's rock ^_^
s = v1;
s = s./max(s);
sound(s,fs);
