

PImage treasure;
PImage HP;
PImage enemy;
PImage fighter;
PImage bg1;
PImage bg2;
PImage bg3;



int bg1x;
int bg2x;
int bg3x;
int tsx;
int tsy;
int x;
int y;
int FTx;
int FTy;
int HPx;
int round=1;

void setup() {
  size(640, 480);

  treasure = loadImage("img/treasure.png");
  tsx = floor(random(15, 340));
  tsy = floor(random(30, 440));
 

  HP = loadImage("img/hp.png");
  

  enemy = loadImage("img/enemy.png");
  x = 0;
  y = floor(random(30, 410));

  fighter = loadImage("img/fighter.png");
  FTx = 580;
  FTy = 150;
 
  bg1x = 0 ;
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
}
void draw() {
  bg2x = bg1x - 636;
  bg3x = bg2x - 636;
  bg1x = (bg1x += 5) % 1280;
  image(bg1, bg1x, 0);
  image(bg2, bg2x, 0);
  image(bg1, bg3x, 0);
  
  fill(255, 0, 0);
  rect(10, 10, 200, 15);

  image(fighter, FTx, FTy);
  x = (x += 5) % 920;
  image(enemy, x+3, y);
  image(treasure, tsx, tsy);
  image(HP, 4, 4);
 
    switch(round){
    case 1: for(int i=0 , p = 0 ;i<5;i++,p+=65){   
    image(enemy, x -p, y); 
     }
     if(x ==890){
     round = 2;
     y=(int)random(130,300);
   }
     break;
 
 case 2: for(int i=0 , p = 0 ;i<5;i++,p+=65){   
    image(enemy, x -p, y-p/2); 
     }
     if(x == 890){
     round = 3;
     y=(int)random(170,270);
   }
     break;
     
    case 3:for(int i=0 , p = 0 ;i<3;i++,p+=65){   
    image(enemy,x-p,y-p);
    image(enemy,x-p,y+p);
    image(enemy,x-p-130,y-p+130);
    image(enemy,x-p-130,y+p-130);
     }       
     if(x == 890){
     round = 1;
     y=(int)random(30,410);
   }    
     break;
    }
  
  }PImage treasure,HP,enemy,fighter,bg1,bg2,bg3;
int bg1x,bg2x,bg3x,tsx,tsy,x,y,FTx,FTy,HPx,round=1;

void setup() {
  size(641, 482);
 
  treasure = loadImage("img/treasure.png");
  tsx = floor(random(15, 340));
  tsy = floor(random(30, 440));
 
 
  HP = loadImage("img/hp.png");
  HPx = floor(random(20,200));
 
  enemy = loadImage("img/enemy.png");
  x = 0;
  y = floor(random(30, 410));

  fighter = loadImage("img/fighter.png");
  FTx = 580;
  FTy = 150;

  bg1x = 0 ;
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
}
void draw() {
  bg2x = bg1x - 636;
  bg3x = bg2x - 636;
  bg1x = (bg1x += 5) % 1280;
  image(bg1, bg1x, 0);
  image(bg2, bg2x, 0);
  image(bg1, bg3x, 0);
  
  fill(255, 0, 0);
  rect(10, 15, HPx, 10);

  image(fighter, FTx, FTy);
  x = (x += 5) % 920;
  image(enemy, x+3, y);
  image(treasure, tsx, tsy);
  image(HP, 4, 4);
 
    switch(round){
    case 1: for(int i=0 , p = 0 ;i<5;i++,p+=65){   
    image(enemy, x -p, y); 
     }
     if(x ==890){
     round = 2;
     y=(int)random(130,300);
   }
     break;
 
 case 2: for(int i=0 , p = 0 ;i<5;i++,p+=65){   
    image(enemy, x -p, y-p/2); 
     }
     if(x == 890){
     round = 3;
     y=(int)random(170,270);
   }
     break;
     
    case 3:for(int i=0 , p = 0 ;i<3;i++,p+=65){   
    image(enemy,x-p,y-p);
    image(enemy,x-p,y+p);
    image(enemy,x-p-130,y-p+130);
    image(enemy,x-p-130,y+p-130);
     }       
     if(x == 890){
     round = 1;
     y=(int)random(30,410);
   }    
     break;
    }
  
  }PImage treasure,HP,enemy,fighter,bg1,bg2,bg3;
int bg1x,bg2x,bg3x,tsx,tsy,x,y,FTx,FTy,HPx,round=1;

void setup() {
  size(641, 482);
 
  treasure = loadImage("img/treasure.png");
  tsx = floor(random(15, 340));
  tsy = floor(random(30, 440));
 
 
  HP = loadImage("img/hp.png");
  HPx = floor(random(20,200));

  enemy = loadImage("img/enemy.png");
  x = 0;
  y = floor(random(30, 410));
 
  fighter = loadImage("img/fighter.png");
  FTx = 580;
  FTy = 150;

  bg1x = 0 ;
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
}
void draw() {
  bg2x = bg1x - 636;
  bg3x = bg2x - 636;
  bg1x = (bg1x += 5) % 1280;
  image(bg1, bg1x, 0);
  image(bg2, bg2x, 0);
  image(bg1, bg3x, 0);
  
  fill(255, 0, 0);
  rect(10, 15, HPx, 10);

  image(fighter, FTx, FTy);
  x = (x += 5) % 920;
  image(enemy, x+3, y);
  image(treasure, tsx, tsy);
  image(HP, 4, 4);
 
    switch(round){
    case 1: for(int i=0 , p = 0 ;i<5;i++,p+=65){   
    image(enemy, x -p, y); 
     }
     if(x ==890){
     round = 2;
     y=(int)random(130,300);
   }
     break;
 
 case 2: for(int i=0 , p = 0 ;i<5;i++,p+=65){   
    image(enemy, x -p, y-p/2); 
     }
     if(x == 890){
     round = 3;
     y=(int)random(170,270);
   }
     break;
     
    case 3:for(int i=0 , p = 0 ;i<3;i++,p+=65){   
    image(enemy,x-p,y-p);
    image(enemy,x-p,y+p);
    image(enemy,x-p-130,y-p+130);
    image(enemy,x-p-130,y+p-130);
     }       
     if(x == 890){
     round = 1;
     y=(int)random(30,410);
   }    
     break;
    }
  
  }
