function circle, xcenter, ycenter, radius
points=(2*!pi/99)*findgen(100)
x=xcenter+radius*cos(points)
y=ycenter+radius*sin(points)
return,transpose([[x],[y]])
end