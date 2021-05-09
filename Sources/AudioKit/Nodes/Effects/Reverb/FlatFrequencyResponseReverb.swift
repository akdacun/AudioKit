// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/
// This file was auto-autogenerated by scripts and templates at http://github.com/AudioKit/AudioKitDevTools/

import AVFoundation
import CAudioKit

/// This filter reiterates the input with an echo density determined by loop time. The attenuation rate is
/// independent and is determined by the reverberation time (defined as the time in seconds for a signal to
/// decay to 1/1000, or 60dB down from its original amplitude).  Output will begin to appear immediately.
/// 
public class FlatFrequencyResponseReverb: NodeBase, AudioUnitContainer {

    /// Unique four-letter identifier "alps"
    public static let ComponentDescription = AudioComponentDescription(effect: "alps")

    /// Internal type of audio unit for this node
    public typealias AudioUnitType = AudioUnitBase

    /// Internal audio unit 
    public private(set) var internalAU: AudioUnitType?

    let input: Node
    override public var connections: [Node] { [input] }

    // MARK: - Parameters

    /// Specification details for reverbDuration
    public static let reverbDurationDef = NodeParameterDef(
        identifier: "reverbDuration",
        name: "Reverb Duration (Seconds)",
        address: akGetParameterAddress("FlatFrequencyResponseReverbParameterReverbDuration"),
        defaultValue: 0.5,
        range: 0 ... 10,
        unit: .seconds)

    /// Seconds for a signal to decay to 1/1000, or 60dB down from its original amplitude.
    @Parameter(reverbDurationDef) public var reverbDuration: AUValue

    // MARK: - Initialization

    /// Initialize this reverb node
    ///
    /// - Parameters:
    ///   - input: Input node to process
    ///   - reverbDuration: Seconds for a signal to decay to 1/1000, or 60dB down from its original amplitude.
    ///   - loopDuration: The loop duration of the filter, in seconds. This can also be thought of as the delay time or “echo density” of the reverberation.  
    ///
    public init(
        _ input: Node,
        reverbDuration: AUValue = reverbDurationDef.defaultValue,
        loopDuration: AUValue = 0.1
        ) {
        self.input = input
        super.init(avAudioNode: AVAudioNode())

        instantiateAudioUnit { avAudioUnit in
            self.avAudioNode = avAudioUnit

            guard let audioUnit = avAudioUnit.auAudioUnit as? AudioUnitType else {
               fatalError("Couldn't create audio unit")
            }
            self.internalAU = audioUnit

            akFlatFrequencyResponseSetLoopDuration(audioUnit.dsp, loopDuration)

            self.reverbDuration = reverbDuration
        }
   }
}
