class Spaceship extends Floater
{
    public Spaceship()
    {
        corners = 4;
        xCorners = new int[]{-8, 16, -8, -2};
        yCorners = new int[]{-8, 0, 8, 0};
        myColor = color(255);
        myCenterX = 250;
        myCenterY = 250;
        myXspeed = 0;
        myYspeed = 0;
        myPointDirection = 0;
    }

    public void hyperspace()
    {
        myCenterX = Math.random()*width;
        myCenterY = Math.random()*height;
        myXspeed = 0;
        myYspeed = 0;
        myPointDirection = Math.random()*360;
    }
    public double getCenterX() { return myCenterX; }
    public double getCenterY() { return myCenterY; }
}
