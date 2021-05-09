// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/
// This file was auto-autogenerated by scripts and templates at http://github.com/AudioKit/AudioKitDevTools/

import AVFoundation
import CAudioKit

/// Physical model approximating the sound of a struck metal bar
/// 
public class MetalBar: NodeBase, AudioUnitContainer {

    /// Unique four-letter identifier "mbar"
    public static let ComponentDescription = AudioComponentDescription(instrument: "mbar")

    /// Internal type of audio unit for this node
    public typealias AudioUnitType = AudioUnitBase

    /// Internal audio unit 
    public private(set) var internalAU: AudioUnitType?

    // MARK: - Parameters

    /// Specification details for leftBoundaryCondition
    public static let leftBoundaryConditionDef = NodeParameterDef(
        identifier: "leftBoundaryCondition",
        name: "Boundary condition at left end of bar. 1 = clamped, 2 = pivoting, 3 = free",
        address: akGetParameterAddress("MetalBarParameterLeftBoundaryCondition"),
        defaultValue: 1,
        range: 1 ... 3,
        unit: .hertz)

    /// Boundary condition at left end of bar. 1 = clamped, 2 = pivoting, 3 = free
    @Parameter(leftBoundaryConditionDef) public var leftBoundaryCondition: AUValue

    /// Specification details for rightBoundaryCondition
    public static let rightBoundaryConditionDef = NodeParameterDef(
        identifier: "rightBoundaryCondition",
        name: "Boundary condition at right end of bar. 1 = clamped, 2 = pivoting, 3 = free",
        address: akGetParameterAddress("MetalBarParameterRightBoundaryCondition"),
        defaultValue: 1,
        range: 1 ... 3,
        unit: .hertz)

    /// Boundary condition at right end of bar. 1 = clamped, 2 = pivoting, 3 = free
    @Parameter(rightBoundaryConditionDef) public var rightBoundaryCondition: AUValue

    /// Specification details for decayDuration
    public static let decayDurationDef = NodeParameterDef(
        identifier: "decayDuration",
        name: "30db decay time (in seconds).",
        address: akGetParameterAddress("MetalBarParameterDecayDuration"),
        defaultValue: 3,
        range: 0 ... 10,
        unit: .hertz)

    /// 30db decay time (in seconds).
    @Parameter(decayDurationDef) public var decayDuration: AUValue

    /// Specification details for scanSpeed
    public static let scanSpeedDef = NodeParameterDef(
        identifier: "scanSpeed",
        name: "Speed of scanning the output location.",
        address: akGetParameterAddress("MetalBarParameterScanSpeed"),
        defaultValue: 0.25,
        range: 0 ... 100,
        unit: .hertz)

    /// Speed of scanning the output location.
    @Parameter(scanSpeedDef) public var scanSpeed: AUValue

    /// Specification details for position
    public static let positionDef = NodeParameterDef(
        identifier: "position",
        name: "Position along bar that strike occurs.",
        address: akGetParameterAddress("MetalBarParameterPosition"),
        defaultValue: 0.2,
        range: 0 ... 1,
        unit: .generic)

    /// Position along bar that strike occurs.
    @Parameter(positionDef) public var position: AUValue

    /// Specification details for strikeVelocity
    public static let strikeVelocityDef = NodeParameterDef(
        identifier: "strikeVelocity",
        name: "Normalized strike velocity",
        address: akGetParameterAddress("MetalBarParameterStrikeVelocity"),
        defaultValue: 500,
        range: 0 ... 1_000,
        unit: .generic)

    /// Normalized strike velocity
    @Parameter(strikeVelocityDef) public var strikeVelocity: AUValue

    /// Specification details for strikeWidth
    public static let strikeWidthDef = NodeParameterDef(
        identifier: "strikeWidth",
        name: "Spatial width of strike.",
        address: akGetParameterAddress("MetalBarParameterStrikeWidth"),
        defaultValue: 0.05,
        range: 0 ... 1,
        unit: .generic)

    /// Spatial width of strike.
    @Parameter(strikeWidthDef) public var strikeWidth: AUValue

    // MARK: - Initialization

    /// Initialize this Bar node
    ///
    /// - Parameters:
    ///   - leftBoundaryCondition: Boundary condition at left end of bar. 1 = clamped, 2 = pivoting, 3 = free
    ///   - rightBoundaryCondition: Boundary condition at right end of bar. 1 = clamped, 2 = pivoting, 3 = free
    ///   - decayDuration: 30db decay time (in seconds).
    ///   - scanSpeed: Speed of scanning the output location.
    ///   - position: Position along bar that strike occurs.
    ///   - strikeVelocity: Normalized strike velocity
    ///   - strikeWidth: Spatial width of strike.
    ///   - stiffness: Dimensionless stiffness parameter
    ///   - highFrequencyDamping: High-frequency loss parameter. Keep this small
    ///
    public init(
        leftBoundaryCondition: AUValue = leftBoundaryConditionDef.defaultValue,
        rightBoundaryCondition: AUValue = rightBoundaryConditionDef.defaultValue,
        decayDuration: AUValue = decayDurationDef.defaultValue,
        scanSpeed: AUValue = scanSpeedDef.defaultValue,
        position: AUValue = positionDef.defaultValue,
        strikeVelocity: AUValue = strikeVelocityDef.defaultValue,
        strikeWidth: AUValue = strikeWidthDef.defaultValue,
        stiffness: AUValue = 3,
        highFrequencyDamping: AUValue = 0.001
    ) {
        super.init(avAudioNode: AVAudioNode())

        instantiateAudioUnit { avAudioUnit in
            self.avAudioNode = avAudioUnit

            guard let audioUnit = avAudioUnit.auAudioUnit as? AudioUnitType else {
                fatalError("Couldn't create audio unit")
            }
            self.internalAU = audioUnit

            self.leftBoundaryCondition = leftBoundaryCondition
            self.rightBoundaryCondition = rightBoundaryCondition
            self.decayDuration = decayDuration
            self.scanSpeed = scanSpeed
            self.position = position
            self.strikeVelocity = strikeVelocity
            self.strikeWidth = strikeWidth
        }

    }

    // MARK: - Control

    /// Trigger the sound with current parameters
    ///
    open func trigger() {
        start()
        internalAU?.trigger()
    }
}
