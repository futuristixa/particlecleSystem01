class ParticlePosition {
 
  void setPosition0()
  {
    alphaAfterimage = 30;
    alphaParticle = 60;
 
    int centerX = width / 2;
    int centerY = height / 2;
 
    float angleAdd = 360 / particles.size();
    float angle = 0;
 
    for ( int i = particles.size()-1; i >= 0; i--) { 
 
      Particle particle = ( Particle ) particles.get(i);
 
      float rad = radians( angle ) + ( millis()/10000.0 );
      float radius = ( width * 0.2 ) * ( sin( millis()/10.0 ) );
      particle.p.x = centerX + ( radius * cos(rad) );
      particle.p.y = centerY + ( radius * sin(rad) );
 
      particle.draw();
      angle += angleAdd;
    }
 
  }
 
  void setPosition1()
  {
    alphaAfterimage = 10;
    alphaParticle = 90;
 
    float nScale = 1000;
    float nStrength = 10;
 
    for ( int i = particles.size()-1; i >= 0; i--) { 
 
      Particle particle = ( Particle ) particles.get(i);
 
      float a = noise( particle.p.x / nScale, particle.p.y / nScale, 0 ) * nStrength;
      particle.p.x += cos( a ) * particle.step;
      particle.p.y += sin( a ) * particle.step;
      particle.angle = a;
 
      particle.draw();
    }
  }
 
}