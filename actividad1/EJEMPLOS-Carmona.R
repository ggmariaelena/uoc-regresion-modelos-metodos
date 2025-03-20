### EJEMPLO CARMONA PONTAQUE
dens<-c(12.7,17.0,66.0,50.0,87.8,81.4,75.6,66.2,81.1,62.8,77.0,89.6,
        18.3,19.1,16.5,22.2,18.6,66.0,60.3,56.0,66.3,61.7,66.6,67.8)
vel<-c(62.4,50.7,17.1,25.9,12.4,13.4,13.7,17.9,13.8,17.9,15.8,12.6,
       51.2,50.8,54.7,46.5,46.3,16.9,19.8,21.2,18.3,18.0,16.6,18.3)
rvel<-sqrt(vel)
par(pty="m")
plot(dens,rvel,type="p",xlab="densidad",ylab="RAIZ(vel)")
recta.ls<-lsfit(dens,rvel)
abline(recta.ls)
recta.ls$coef
ls.print(recta.ls, digits=4, print.it=T)
ls.diag(recta.ls)$std.dev
e<-recta.ls$residuals
par(mfrow=c(1,2))
par(pty="s")
plot(dens,e,type="p",xlab="densidad",ylab="residuos",ylim=c(-0.6,0.6))
abline(h=0)
pred<-rvel-e
plot(pred,e,type="p",xlab="predicci´on",ylab="residuos",ylim=c(-0.6,0.6))
abline(h=0)
