// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/
// This file was auto-autogenerated by scripts and templates at http://github.com/AudioKit/AudioKitDevTools/

import AVFoundation
import CAudioKit

/// The output for reson appears to be very hot, so take caution when using this module.
public class ResonantFilter: NodeBase, AudioUnitContainer {

    /// Unique four-letter identifier "resn"
    public static let ComponentDescription = AudioComponentDescription(effect: "resn")

    /// Internal type of audio unit for this node
    public typealias AudioUnitType = AudioUnitBase

    /// Internal audio unit 
    public private(set) var internalAU: AudioUnitType?

    let input: Node
    override public var connections: [Node] { [input] }

    // MARK: - Parameters

    /// Specification details for frequency
    public static let frequencyDef = NodeParameterDef(
        identifier: "frequency",
        name: "Center frequency of the filter, or frequency position of the peak response.",
        address: akGetParameterAddress("ResonantFilterParameterFrequency"),
        defaultValue: 4_000.0,
        range: 100.0 ... 20_000.0,
        unit: .hertz)

    /// Center frequency of the filter, or frequency position of the peak response.
    @Parameter(frequencyDef) public var frequency: AUValue

    /// Specification details for bandwidth
    public static let bandwidthDef = NodeParameterDef(
        identifier: "bandwidth",
        name: "Bandwidth of the filter.",
        address: akGetParameterAddress("ResonantFilterParameterBandwidth"),
        defaultValue: 1_000.0,
        range: 0.0 ... 10_000.0,
        unit: .hertz)

    /// Bandwidth of the filter.
    @Parameter(bandwidthDef) public var bandwidth: AUValue

    // MARK: - Initialization

    /// Initialize this filter node
    ///
    /// - Parameters:
    ///   - input: Input node to process
    ///   - frequency: Center frequency of the filter, or frequency position of the peak response.
    ///   - bandwidth: Bandwidth of the filter.
    ///
    public init(
        _ input: Node,
        frequency: AUValue = frequencyDef.defaultValue,
        bandwidth: AUValue = bandwidthDef.defaultValue
        ) {
        self.input = input
        super.init(avAudioNode: AVAudioNode())

        instantiateAudioUnit { avAudioUnit in
            self.avAudioNode = avAudioUnit

            guard let audioUnit = avAudioUnit.auAudioUnit as? AudioUnitType else {
               fatalError("Couldn't create audio unit")
            }
            self.internalAU = audioUnit

            self.frequency = frequency
            self.bandwidth = bandwidth
        }
   }
}
