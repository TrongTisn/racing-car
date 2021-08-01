

noStroke();
// position of the cars
var redX = 10;
var redY = 400;
var yellowX = 10;
var yellowY = 650;
var greenX = 10;
var greenY = 900;
// speed of the car
var redSpeed = random(5,6);
var greenSpeed = random(5,6);
var yellowSpeed = random(5,6);
// random parameters and characteristics of the car
// width
var redWidth = floor(random(100,150));
var greenWidth = floor(random(100,150));
var yellowWidth = floor(random(100,150));
// height
var redHeight = floor(random(20,55));
var greenHeight = floor(random(20,55));
var yellowHeight = floor(random(20,55));
//random numbers for vertical 
var redVerticalCheck = floor(random(400,900));
var greenVerticalCheck = floor(random(400,900));
var yellowVerticalCheck = floor(random(400,900));
//func for display winning theme
var redWinDisplay = function(){
  background(0,0,0);
  textFont(createFont("Prata"));
  textSize(200);
  fill(255,0,0);
  textAlign(CENTER);
  text("Victory",width/2, 300);
  textSize(100);
  text("---- Red wins ----", width/2,500)
}

var greenWinDisplay = function(){
  background(0,0,0);
  textFont(createFont("Prata"));
  textSize(200);
  fill(0,255,0);
  textAlign(CENTER);
  text("Victory",width/2, 300);
  textSize(100);
  text("---- Green wins ----", width/2,500)
}

var yellowWinDisplay = function(){
  background(0,0,0);
  textFont(createFont("Prata"));
  textSize(200);
  fill(255,255,0);
  textAlign(CENTER);
  text("Victory",width/2, 300);
  textSize(100);
  text("---- Yellow wins ----", width/2,500)
}


//position of the cloud 
//Left2Right
 var cloudXLeft2RightA = 300;
var cloudYLeft2RightA = 80;
var cloudXLeft2RightB = 700;
var cloudYLeft2RightB = 80;
var cloudXLeft2RightC = 1200;
var cloudYLeft2RightC = 80;

//Right2Left
var cloudXRight2LeftA = 1600;
var cloudYRight2LeftA = 140;
var cloudXRight2LeftB = 450;
var cloudYRight2LeftB = 140;
var cloudXRight2LeftC = 100;
var cloudYRight2LeftC = 140;

// finish line
var finishLineX = 2700;
var finishLineY = 0;
var finishLineWidth = 500;
var finishLineHeight = 1000;

// the rock (obstacle)
var rock1X = floor(random(1000,1500));
var rock1Y = floor(random(400,900));
var rock2X = floor(random(1500,2000));
var rock2Y = floor(random(400,900));
// rock properties
var rock1Width = floor(random(90,110));
var rock1Height = floor(random(90,110));
var rock2Width  = floor(random(90,110));
var rock2Height  = floor(random(90,110));



void setup()
{
  size(3000,1000);
  background(125);
  //image
  racingFlagLeft = loadImage("./picture/racing-flag-left.png");
  racingFlagRight = loadImage("./picture/racing-flag-right.png");
  collision = loadImage("./picture/fire.png");
  finishLine = loadImage("./picture/finish-line.png");
  skull = loadImage("./picture/skull.png");
  rock = loadImage("./picture/hot-stones.png");
}

draw = function() {
 
    // all lines of code inside here will be run repeatedly
    background(151, 244, 247);

//finish line
image(finishLine,finishLineX,finishLineY,finishLineWidth,finishLineHeight);


    //cloud 
    fill(255,255,255);
  /* ---- Left 2 Right ----*/
    //Left2RightA cloud
    ellipse(cloudXLeft2RightA,cloudYLeft2RightA,170,150);
    ellipse(cloudXLeft2RightA - 50,cloudYLeft2RightA,170,100);
    ellipse(cloudXLeft2RightA + 50,cloudYLeft2RightA,170,100);
    cloudXLeft2RightA+=1;

    // left2RightB cloud //
    ellipse(cloudXLeft2RightB,cloudYLeft2RightB,170,150);
    ellipse(cloudXLeft2RightB - 50,cloudYLeft2RightB,170,100);
    ellipse(cloudXLeft2RightB + 50,cloudYLeft2RightB,170,100);
    cloudXLeft2RightB +=1.5;

    //left2RightC cloud //
    ellipse(cloudXLeft2RightC,cloudYLeft2RightC,170,150);
    ellipse(cloudXLeft2RightC - 50,cloudYLeft2RightC,170,100);
    ellipse(cloudXLeft2RightC + 50,cloudYLeft2RightC,170,100);
    cloudXLeft2RightC +=1.7;

  /* ---- Right 2 Left ---- */
    //Right2LeftA cloud
    ellipse(cloudXRight2LeftA,cloudYRight2LeftA,170,150);
    ellipse(cloudXRight2LeftA - 50,cloudYRight2LeftA,170,100);
    ellipse(cloudXRight2LeftA + 50,cloudYRight2LeftA,170,100);
    cloudXRight2LeftA -=1.5;

    //Right2LeftB cloud//
    ellipse(cloudXRight2LeftB,cloudYRight2LeftB,170,150);
    ellipse(cloudXRight2LeftB - 50,cloudYRight2LeftB,170,100);
    ellipse(cloudXRight2LeftB + 50,cloudYRight2LeftB,170,100);
    cloudXRight2LeftB -=1.1;

    //Right2LeftC cloud //
    ellipse(cloudXRight2LeftC,cloudYRight2LeftC,170,150);
    ellipse(cloudXRight2LeftC - 50,cloudYRight2LeftC,170,100);
    ellipse(cloudXRight2LeftC + 50,cloudYRight2LeftC,170,100);
    cloudXRight2LeftC -=1.78;

/* ---- Left 2 Right ---- */
    if (cloudXLeft2RightA - 170 > width) {
      cloudXLeft2RightA = 0;
       if (cloudXLeft2RightA === 0) {
         cloudYLeft2RightA = floor(random(60,90));
       }
    }

    if (cloudXLeft2RightB - 170 > width) {
      cloudXLeft2RightB = 0;
       if (cloudXLeft2RightB === 0) {
         cloudYLeft2RightB = floor(random(60,90));
       }
    }

       if (cloudXLeft2RightC - 170 > width) {
      cloudXLeft2RightC = 0;
       if (cloudXLeft2RightC === 0) {
         cloudYLeft2RightC = floor(random(60,90));
       }
    }

/**  ---- RIght 2 Left ----     */

    if (cloudXRight2LeftA + 170 < 0) {
      cloudXRight2LeftA = width; 
    }

    if (cloudXRight2LeftB + 170 < 0) {
      cloudXRight2LeftB = width;  
    }

    if (cloudXRight2LeftC + 170 < 0) {
      cloudXRight2LeftC = width;
    }

noStroke();


    // --- drawing area below ---
    // draw the RED car body
    fill(255, 0, 115);
    rect(redX, redY, redWidth, redHeight); //red car main position
    rect(redX + 15, redY - 12, 70, 40);
    // draw the wheels
    fill(77, 66, 66);
    ellipse(redX + 25, redY + redHeight, 24, 24);
    ellipse(redX + 75, redY + redHeight, 24, 24);
    redX+= redSpeed;


    // draw the YELLOW car body
    fill(255,255,0);
    rect(yellowX, yellowY, yellowWidth, yellowHeight); //yellow car main position
    rect(yellowX + 15, yellowY - 12, 70, 40);
    // draw the wheels
    fill(77, 66, 66);
    ellipse(yellowX + 25, yellowY + yellowHeight, 24, 24);
    ellipse(yellowX + 75, yellowY + yellowHeight, 24, 24);
    yellowX += yellowSpeed;

    

    // draw the GREEN car body
    fill(0,255,0);
    rect(greenX, greenY, greenWidth, greenHeight); //green car main position
    rect(greenX + 15, greenY - 12, 70, 40);
    // draw the wheels
    fill(77, 66, 66);
    ellipse(greenX + 25, greenY + greenHeight, 24, 24);
    ellipse(greenX + 75, greenY + greenHeight, 24, 24);
    greenX+= greenSpeed;
  
    //draw obstacle
    image(rock,rock1X,rock1Y,rock1Width,rock1Height);
    image(rock,rock2X,rock2Y,rock2Width,rock2Height);


// ---- Check condition area below ----


//when cars run (check collision)
  if (redX !== 10 && greenX !== 10 && yellowX !== 10){
// check collision between CARS
 if ((redX + redWidth) > greenX && redX < (greenX + greenWidth) && ((redY - 12) + redHeight + 20) > greenY && (greenY + greenHeight + 20) > (redY - 12)){
  if (redY > greenY){
    image(collision,redX + (redWidth / 2),greenY,100,100);
  } else if (redY < greenY){
        image(collision,greenX + (greenWidth /2),redY,100,100);
  }
   redSpeed = 0;
   greenSpeed = 0;
   redVerticalCheck = redY;
   greenVerticalCheck = greenY;
 }

if ((redX + redWidth) > yellowX && redX < (yellowX + yellowWidth) && ((redY - 12) + redHeight + 20) > yellowY && (yellowY + yellowHeight + 20) > (redY - 12)){
  if (redY > yellowY){
    image(collision,redX + (redWidth / 2),yellowY,100,100);
  } else if (redY < yellowY){
        image(collision,yellowX + (yellowWidth /2),redY,100,100);
  }
   redSpeed = 0;
   yellowSpeed = 0;
   redVerticalCheck = redY;
   yellowVerticalCheck = yellowY;
 }

 if ((yellowX + yellowWidth) > greenX && yellowX < (greenX + greenWidth) && ((yellowY - 12) + yellowHeight + 20) > greenY && (greenY + greenHeight + 20) > (yellowY - 12)){
  if (yellowY > greenY){
    image(collision,yellowX + (yellowWidth / 2),greenY,100,100);
  } else if (yellowY < greenY){
        image(collision,greenX + (greenWidth /2),yellowY,100,100);
  }
   yellowSpeed = 0;
   greenSpeed = 0;
   yellowVerticalCheck = yellowY;
   greenVerticalCheck = greenY;
 }
  }

//check collision between CARS AND OBSTACLE
// rock 1
if ((redX + redWidth - 15) > rock1X && redX < (rock1X + rock1Width) && (redY + redHeight) > rock1Y && redY < (rock1Y + rock1Height)){
   image(collision,rock1X,rock1Y,100,100);
   redSpeed = 0;
   redVerticalCheck = redY;
}

if ((greenX + greenWidth - 15) > rock1X && greenX < (rock1X + rock1Width) && (greenY + greenHeight) > rock1Y && greenY < (rock1Y + rock1Height)){
   image(collision,rock1X,rock1Y,100,100);
   greenSpeed = 0;
   greenVerticalCheck = greenY;
}


if ((yellowX + yellowWidth - 15) > rock1X && yellowX < (rock1X + rock1Width) && (yellowY + yellowHeight) > rock1Y && yellowY < (rock1Y + rock1Height)){
   image(collision,rock1X,rock1Y,100,100);
   yellowSpeed = 0;
   yellowVerticalCheck = yellowY;
}

//rock 2
if ((redX + redWidth - 15) > rock2X && redX < (rock2X + rock2Width) && (redY + redHeight) > rock2Y && redY < (rock2Y + rock2Height)){
   image(collision,rock2X,rock2Y,100,100);
   redSpeed = 0;
   redVerticalCheck = redY;
}

if ((greenX + greenWidth - 15) > rock2X && greenX < (rock2X + rock2Width) && (greenY + greenHeight) > rock2Y && greenY < (rock2Y + rock2Height)){
   image(collision,rock2X,rock2Y,100,100);
   greenSpeed = 0;
   greenVerticalCheck = greenY;
}

if ((yellowX + yellowWidth - 15) > rock2X && yellowX < (rock2X + rock2Width) && (yellowY + yellowHeight) > rock2Y && yellowY < (rock2Y + rock2Height)){
   image(collision,rock2X,rock2Y,100,100);
   yellowSpeed = 0;
   yellowVerticalCheck = yellowY;
}

//vertical check
 if (redY > redVerticalCheck){
   redY-=0.5;
   redX += redSpeed;
 } else if (redY < redVerticalCheck){
   redY+= 0.5;
   redX += redSpeed;
 }

 if (greenY > greenVerticalCheck){
   greenY-=0.5;
   greenX += greenSpeed;
 } else if (greenY < greenVerticalCheck){
   greenY+= 0.5;
   greenX += greenSpeed;
 }

 if (yellowY > yellowVerticalCheck){
   yellowY-=0.5;
   yellowX += yellowSpeed;
 } else if (yellowY < yellowVerticalCheck){
   yellowY+= 0.5;
   yellowX += yellowSpeed;
 }
  

//Game name with flags 
    fill(0,0,0);
    textFont(createFont("Bangers"));
    textSize(50);
    textAlign(CENTER);
    text("THE AMAZING RACE", width / 2 ,60);  
    image(racingFlagLeft,1250,10,100,100); 
    image(racingFlagRight,1660,10,100,100);


//check all car crash 
    if (redSpeed === 0 && greenSpeed === 0 && yellowSpeed === 0){
    background(255);
    image(skull,width / 2 - 300,10,500,500);
    textFont(createFont("Press Start 2P"));
    textSize(170);
    fill(255,0,0);
    text("Game Over", width / 2,700);    
    textSize(100);
    text("All car crashed", width / 2, 800);
  }


//check touch finish line
// finishLine img has transparent 
if (redX > finishLineX + 70 && redX < (finishLineX + finishLineWidth) && ((redY - 12) + redHeight + 20) > finishLineY && (finishLineY + finishLineHeight + 20) > (redY - 12)){
   redSpeed = 0;
   greenSpeed = 0;
   yellowSpeed = 0;
   redWinDisplay();
}

if (greenX > finishLineX + 70 && greenX < (finishLineX + finishLineWidth) && ((greenY - 12) + greenHeight + 20) > finishLineY && (finishLineY + finishLineHeight + 20) > (greenY - 12)){
   redSpeed = 0;
   greenSpeed = 0;
   yellowSpeed = 0;
   greenWinDisplay();
}

if (yellowX > finishLineX + 70 && yellowX < (finishLineX + finishLineWidth) && ((yellowY - 12) + yellowHeight + 20) > finishLineY && (finishLineY + finishLineHeight + 20) > (yellowY - 12)){
   redSpeed = 0;
   greenSpeed = 0;
   yellowSpeed = 0;
   yellowWinDisplay();
}



// } for draw = function()
}

/*
console.log("red properties")
console.log(redX);
console.log(redY);
console.log("green properties")
console.log(greenX);
console.log(greenY);
console.log("yellow properties")
console.log(yellowX);
console.log(yellowY);
console.log(rock1Y);
// 
console.log(rock1X);
console.log(rock1Width);
console.log(rock1Height);
*/