class Board{

Coordinate[][] board;
boolean[][] occupied;
ArrayList<ArrayList<Zombies>> zombieLanes;
ArrayList<ArrayList<Plant>> plantLanes;

  
  Board(){
    initializeBoard();
    occupied = new boolean[5][9];
  }
  
  void initializeBoard(){
    board = new Coordinate[5][9];
    zombieLanes = new ArrayList<ArrayList<Zombies>>();
    plantLanes = new ArrayList<ArrayList<Plant>>();
    for (int idx = 0; idx < 5; idx ++){
      zombieLanes.add(new ArrayList<Zombies>());
      plantLanes.add(new ArrayList<Plant>());
    }
    fill(0, 0, 0);
    int x = 420;
    int y = 150;
    for (int idx = 0; idx < 5; idx ++){
      for (int idx2 = 0; idx2 < 9; idx2 ++){
        board[idx][idx2] = new Coordinate(x,y);
        //ellipse(x, y, 20, 20);
        x += 100;
        //ellipse(output[idx][idx2].getX(), output[idx][idx2].getY(), 20, 20);
      }
      y += 130;
      x = 420;
    }
  }
  
  Walnut makeWalnut(int r, int c){
    Walnut w = new Walnut(r, c, "walnut", 50);
    ListOfPlant.add(w);
    plantLanes.get(r).add(w);
    thingsToUpdate.add(w);
    thingsToDisplay.add(w);
    occupied[r][c] = true;
    sun -= 50;
    
    return w;
  }
  
 void makeSunSunflower(int r, int c){
    Sun s = new Sun(board[r][c].x + 55, board[r][c].y - 55);
    thingsToDisplay.add(s);
    //thingsToUpdate.add(s);
    suns.add(s);
    //print("made");
 }
 
 void makeSunSky(){
  if (sunFrame > 60 && suns.size() < 10){
    Sun s = new Sun(r.nextInt(1300-380-30) + 410, 0);//r.nextInt(720-130) + 130);
    thingsToDisplay.add(s);
    suns.add(s);
    thingsToMove.add(s);
    sunFrame = 0;
    thingsToUpdate.add(s);
    ListOfSun.add(s);
  }
  sunFrame++;
}
  
  Peashooter makePea(int r, int c){
    Peashooter p = new Peashooter(r, c, "peashooter", 100);
    peashooters.add(p);
    thingsToDisplay.add(p);
    ListOfPlant.add(p);
    plantLanes.get(r).add(p);
    thingsToUpdate.add(p);
    occupied[r][c] = true;
    sun -= 100;
    return p;
  }
  
  CherryBomb makeCherryBomb(int r, int c){
    CherryBomb cb = new CherryBomb(r, c);
    //thingsToDisplay.add(cb);
    ListOfPlant.add(cb);
    //plantLanes.get(r).add(c);
    thingsToUpdate.add(cb);
    occupied[r][c] = true;
    sun -= 150;
    return cb;  
  }
  
  Sunflower makeSunflower(int r, int c){
    Sunflower s = new Sunflower(r, c);
    sunflowers.add(s);
    thingsToDisplay.add(s);
    ListOfPlant.add(s);
    plantLanes.get(r).add(s);
    thingsToUpdate.add(s);
    occupied[r][c] = true;
    sun -= 50;
    return s;
  }
  
  GardenZombie makeGardenZombie(int r, int c){
    GardenZombie z = new GardenZombie(r, c);
    zombieLanes.get(r).add(z);
    thingsToDisplay.add(z);
    ListOfZombies.add(z);
    thingsToMove.add(z);
    thingsToUpdate.add(z);
    return z;
  }
  
  ConeZombie makeConeZombie(int r, int c){
    ConeZombie z = new ConeZombie(r, c);
    zombieLanes.get(r).add(z);
    thingsToDisplay.add(z);
    ListOfZombies.add(z);
    thingsToMove.add(z);
    thingsToUpdate.add(z);
    return z;
  }
  
  BucketZombie makeBucketZombie(int r, int c){
    BucketZombie z = new BucketZombie(r, c);
    zombieLanes.get(r).add(z);
    thingsToDisplay.add(z);
    ListOfZombies.add(z);
    thingsToMove.add(z);
    thingsToUpdate.add(z);
    return z;
  }
  
  Snowpea makeSnowpea(int r, int c){
    Snowpea s = new Snowpea(r, c);
    thingsToDisplay.add(s);
    ListOfPlant.add(s);
    plantLanes.get(r).add(s);
    thingsToUpdate.add(s);
    occupied[r][c] = true;
    sun -= 175;
    return s;
  }
  
  Potato makePotato(int r, int c){
    Potato s = new Potato(r, c);
    thingsToDisplay.add(s);
    ListOfPlant.add(s);
    plantLanes.get(r).add(s);
    thingsToUpdate.add(s);
    occupied[r][c] = true;
    sun -= 25;
    return s;
  }
  
  Chomper makeChomper(int r, int c){
    Chomper s = new Chomper(r, c);
    thingsToDisplay.add(s);
    ListOfPlant.add(s);
    plantLanes.get(r).add(s);
    thingsToUpdate.add(s);
    occupied[r][c] = true;
    sun -= 150;
    return s;
  }
  
  boolean occupied(int r, int c){
    return occupied[r][c];
  }
  
  boolean mouseOn(){
    return (mouseX < 1285 && mouseX > 380 && mouseY < 715 && mouseY > 100);
  }
}
