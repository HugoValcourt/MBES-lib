#ifndef SOUNDVELOCITYPROFILEFACTORY_HPP
#define SOUNDVELOCITYPROFILEFACTORY_HPP

/*!
 * \brief Sound velocity profile factory class
 */
class SoundVelocityProfileFactory{
	public:
                /**
                 * Return a Sound velocity profile model with salt water
                 */
		static SoundVelocityProfile * buildSaltWaterModel(){
			SoundVelocityProfile * svp = new SoundVelocityProfile();
			//TODO: set time/location?
			svp->add(0,1520);
			svp->add(15000,1520);
			return svp;
		}
};


#endif