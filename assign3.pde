PImage bg1img;
  PImage bg2img;
  PImage bg3img;
  PImage enemyimg;
  PImage fighterimg;
  PImage hpimg;
  PImage treasureimg;
  
  int x,x1,x2,x3,x4,x5,y,y1,y2,y3,y4,y5,y6,y7,bgX, bgY,bgZ,xt,yt,spaceX;
  final int COUNT=60;
        
        void setup(){
        size(640,480);
         

        bgX =0;
        xt =580;
        yt = 30;
        spaceX =60;
         bg1img=loadImage("img/bg1.png");
        bg2img=loadImage("img/bg2.png");
        bg3img=loadImage("img/bg1.png");
        fighterimg=loadImage("img/fighter.png");
        hpimg=loadImage("img/hp.png");
        enemyimg=loadImage("img/enemy.png");
        treasureimg=loadImage("img/treasure.png");
        x = 0;                                    // 敵機 xy 初始設定
        x1=x-60;
         x2=x-120;
         x3=x-180;
         x4=x-240;
          y = floor(random(20,440));
         y1=y;
         y2=y;
         y3=y;
         y4=y;                               //

        }
        
        void draw(){
          image(bg1img,bgX,0);
          image(bg2img,bgY,0);
          image(bg3img,bgZ,0);
          image(fighterimg,580,400);
          image(treasureimg,xt,yt); 
          image(hpimg,0,0);
              fill(255,0,0);
              rect(20,7,80,10);
               bgX ++ ;   
                bgY = bgX-640;
                bgZ = bgY-640;
                bgX = bgX%1280; 
                          
            image(enemyimg,x,y);   // 敵機部分
             x+=2;
            image(enemyimg,x1,y1);
            x1 +=2;
            image(enemyimg,x2,y2);
            x2 +=2;
            image(enemyimg,x3,y3);
            x3 +=2;
            image(enemyimg,x4,y4);
            x4 +=2;
            if(x>940){
              x=0;
              y = floor(random(20,400));
              y1=y;
         y2=y;
         y3=y;
         y4=y;    
              x1=x-60;
   x2=x-120;
   x3=x-180;
   x4=x-240;
     
    
            }
              }   
