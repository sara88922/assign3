

PImage fighter;
PImage enemy;
PImage treasure;
PImage HP;
PImage background1;
PImage background2;
PImage background3;


int background1x;
int background2x;
int background3x;
int treasurex;
int treasurey;
int x;
int y;
int fighterx;
int fightery;
int round = 1;

void setup() {
  size(640, 480);
  
  HP = loadImage("img/hp.png");
  
  treasure = loadImage("img/treasure.png");
  treasurex = floor(random(15, 340));
  treasurey = floor(random(30, 440));
  
  fighter = loadImage("img/fighter.png");
  fighterx = 580;
  fightery = 150;
 
  enemy = loadImage("img/enemy.png");
  x = 0;
  y = floor(random(30, 410));
 
  background1x = 0 ;
  background1 = loadImage("img/background1.png");
  background2 = loadImage("img/background2.png");
}
void draw() {
  background2x = background1x - 600;
  background3x = background2x - 600;
  background1x = (background1x += 3) % 1100;
  image(background1, background1x, 0);
  image(background2, background2x, 0);
  image(background1, background3x, 0);
  
  fill(255, 0, 0);
  rect(10, 10, 200, 15);

  image(fighter, fighterx, fightery);
  x = (x += 6) % 920;
  image(enemy, x+3, y);
  image(treasure, treasurex, treasurey);
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
