pro plotnode
   x=dindgen(1000)/1000.0*20.0-10.0
   
 for n=1,40 do begin
   y1=0.5+n-20-x
   y2=-0.5-n+20+x
 iplot,x,y1,color=[0,0,0],XRANGE=[-4,4],YRANGE=[-4,4],linestyle=1,/overplot
 iplot,x,y2,color=[0,0,0],XRANGE=[-4,4],YRANGE=[-4,4],linestyle=1,/overplot
 endfor
end
 