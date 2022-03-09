size(720, 480);//Tamaño Ventana
pushMatrix();
translate(width/2, height);
scale(1,-1);
fill(200,0,0);
stroke(0);//Color Contorno (R,G,B)
strokeWeight(3);
rect(0, 20, 100, 50, 10);
fill(0,0,255);
rect(0, 100, 100, 50, 10);
strokeWeight(1);
fill(0,200,0);
ellipse(50, 200, 60, 60);

popMatrix();
/*
stroke(0, 255, 0);
strokeWeight(6);//grosor Controno
ellipse(100, 45, 50, 50);
stroke(0, 0, 255);
strokeWeight(3);
triangle(130, 20, 190, 20, 160, 70);
/**/
