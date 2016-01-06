//
//  AKDryWetMixerAudioUnit.h
//  AudioKit
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright (c) 2015 Aurelius Prochazka. All rights reserved.
//

#ifndef AKDryWetMixerAudioUnit_h
#define AKDryWetMixerAudioUnit_h

#import <AudioToolbox/AudioToolbox.h>

@interface AKDryWetMixerAudioUnit : AUAudioUnit
- (void)start;
- (void)stop;
- (BOOL)isPlaying;
@end

#endif /* AKDryWetMixerAudioUnit_h */
