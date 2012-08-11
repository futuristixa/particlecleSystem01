import processing.opengl.*;

//particles
ArrayList particles;
ParticleController particleController;
ParticlePosition particlePosition;

int pAmount = 60;
int posNum = 0;

//effects
float alphaAfterimage = 10;
float alphaParticle = 90;

//controlColor
int colorCont1 = 60;
int colorCont2 = 255;


void setup()
{
  size( 1280, 720, OPENGL );
  background( 0 );
  smooth();

  particles = new ArrayList();
  particleController = new ParticleController();
  particlePosition = new ParticlePosition();

  particleController.addParticles( pAmount );
}


void draw()
{
  drawEnvironment();
  particleController.update();
  drawControl();
}


void drawEnvironment()
{
  fill( 0, alphaAfterimage );
  noStroke();
  rect( 0, 0, width, height );

  stroke( 255, alphaParticle );
}


void drawControl()
{
  noStroke();

  fill( colorCont1 );
  rect( 20, 20, 200, 20 );
  fill( colorCont2 );
  String s = "frameRate: " + str( frameRate );
  text( s, 24, 34 );

  fill( colorCont1 );
  rect( 20, 42, 200, 20 );
  fill( colorCont2 );
  String pos = "positionNum: " + str( posNum );
  text( pos, 24, 57 );

  fill( colorCont1 );
  text( "type 0 or 1 to change positions", 24, 82 );
}


void keyPressed()
{

  switch( key ) {

    case '0': 
      posNum = 0; 
      break;

    case '1': 
      posNum = 1; 
      break;
  }

}
