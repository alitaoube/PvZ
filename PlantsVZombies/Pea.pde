class Pea implements Displayable, Moveable{
  
  float x, y;
  int row;
  
  Pea(float xcor, float ycor, int r) {x = xcor; y = ycor; row = r;}
  
  void display(){
    fill(0, 255, 0);
    ellipse(x, y, 22, 22);
  }
  
  void move(){x += 15;}
  
  boolean touchingZombie(){
    for (int idx = 0; idx < backyard.zombieLanes.get(this.row).size(); idx ++){
      Zombies z = backyard.zombieLanes.get(this.row).get(idx);
      if (z.x - this.x < 11) return true;
    }
    return false;
  }
  
  Zombies hitZombie(){
    Zombie z = backyard.zombieLanes.get(this.row).get(0);
    float minDistance = dist(this.x, this.y, backyard.zombieLanes.get(this.row).get(0).x, backyard.zombieLanes.get(this.row).get(0).y);
    for (int idx = 0; idx < backyard.zombieLanes.get(this.row).size(); idx ++){
      Zombies tempZ = backyard.zombieLanes.get(this.row).get(idx);
      int newDistance = dist(this.x, this.y, temp.x, temp.y);
      if (newDistance < minDistance){
        minDistance = newDistance;
        z = tempZ;
    }
    return z;
  }
    
    
}