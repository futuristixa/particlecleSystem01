class ParticleController {


    ParticleController() {
    }


    void update()
    {
      switch( posNum ) {

        case 0:
          particlePosition.setPosition0();
          break;

        case 1: 
          particlePosition.setPosition1();
          break;
      }
    }


    void addParticles( int amount )
    {
      for( int i = 0; i < amount; i++ )
      {
        particles.add( new Particle() );
      }
    }


    void removeParticles( int num )
    { 
        particles.remove( num );
    }

}