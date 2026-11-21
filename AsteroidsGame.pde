Spaceship bob;
Star[] nightSky = new Star[200];
ArrayList<Asteroid> rocks; // 1. Declare the ArrayList

public void setup()
{
    size(500, 500);
    bob = new Spaceship();
    
    for (int i = 0; i < nightSky.length; i++)
    {
        nightSky[i] = new Star();
    }
    
    // 2. Initialize the ArrayList and add 5 Asteroids
    rocks = new ArrayList<Asteroid>();
    for (int i = 0; i < 5; i++)
    {
        rocks.add(new Asteroid());
    }
}

public void draw()
{
    background(0);
    for (int i = 0; i < nightSky.length; i++)
    {
        nightSky[i].show();
    }
    
    bob.move();
    bob.show();
    
    // 3. Loop through the Asteroids backwards (so removing doesn't skip items)
    for (int i = rocks.size() - 1; i >= 0; i--)
    {
        Asteroid a = rocks.get(i);
        
        // 4. Check for collision using dist()
        if (dist((float)bob.myCenterX, (float)bob.myCenterY, (float)a.getCenterX(), (float)a.getCenterY()) < 20)
        {
            rocks.remove(i); // Remove asteroid if it hits the ship
        }
        else
        {
            a.move();
            a.show();
        }
    }
}

public void keyPressed()
{
    if (key == 'a') { bob.turn(-15); }
    if (key == 'd') { bob.turn(15); }
    if (key == 'w') { bob.accelerate(0.2); }
    if (key == 's') { bob.accelerate(-0.2); }
    if (key == 'h') { bob.hyperspace(); }
}
