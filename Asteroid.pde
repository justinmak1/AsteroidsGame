class Asteroid extends Floater
{
    private double rotSpeed;

    public Asteroid()
    {
        // 1. Initialize the 9 inherited variables
        corners = 6;
        xCorners = new int[]{-11, 7, 13, 6, -11, -5};
        yCorners = new int[]{-8, -8, 0, 10, 8, 0};
        myColor = color(255);
        myCenterX = Math.random() * width;
        myCenterY = Math.random() * height;
        myXspeed = Math.random() * 2 - 1; // Random speed -1 to 1
        myYspeed = Math.random() * 2 - 1;
        myPointDirection = Math.random() * 360;
        
        // 2. Initialize the 10th variable (rotation speed)
        rotSpeed = Math.random() * 4 - 2; // Random spin -2 to 2 degrees
    }

    // 3. Override move() to turn, then move normally
    public void move()
    {
        turn(rotSpeed);
        super.move(); // Calls the move() from Floater (no need to copy/paste!)
    }

    // 4. Required getters for collision detection
    public double getCenterX() { return myCenterX; }
    public double getCenterY() { return myCenterY; }
}
