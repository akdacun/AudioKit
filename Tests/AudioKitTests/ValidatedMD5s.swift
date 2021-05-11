import AVFoundation
import XCTest

extension XCTestCase {
    func testMD5(_ buffer: AVAudioPCMBuffer) {
        let localMD5 = buffer.md5
        let name = self.description
        XCTAssert(validatedMD5s[name] == buffer.md5, "\nFAILEDMD5 \"\(name)\": \"\(localMD5)\",")
    }
}

let validatedMD5s: [String: String] = [
    "-[AmplitudeEnvelopeTests testAttack]": "d854eb2e2033f57db8eaece7352158a1",
    "-[AmplitudeEnvelopeTests testDecay]": "049f077cfac89eb544bba6386ef3cd41",
    "-[AmplitudeEnvelopeTests testDefault]": "2a0becc83d69bbf8635ab21c2e53bbe3",
    "-[AmplitudeEnvelopeTests testDoubleStop]": "584a2da667f8e83f085addf29e8b10bf",
    "-[AmplitudeEnvelopeTests testParameters]": "d13574ced5796c3dcf56ce14a231b9a7",
    "-[AmplitudeEnvelopeTests testRelease]": "584a2da667f8e83f085addf29e8b10bf",
    "-[AmplitudeEnvelopeTests testSustain]": "eab230014d499b2d8c82781d2b645cdc",
    "-[AmplitudeTapTests testDefault]": "b90b7df4d69e57898ee39d89891f8f91",
    "-[AmplitudeTapTests testLeftStereoMode]": "b90b7df4d69e57898ee39d89891f8f91",
    "-[AmplitudeTapTests testRightStereoMode]": "b90b7df4d69e57898ee39d89891f8f91",
    "-[AmplitudeTapTests testPeakAnalysisMode]": "b90b7df4d69e57898ee39d89891f8f91",
    "-[AppleSamplerTests testAmplitude]": "70854de319db480ca802311a5a5c3fca",
    "-[AppleSamplerTests testAppleSamplerPolyphonicInheritance]": "0c1f8a827fe39440838f741c2113f0df",
    "-[AppleSamplerTests testPan]": "8c2e87cae03e7438b79db02e63875bfb",
    "-[AppleSamplerTests testSamplePlayback]": "2e3998ba717871f980d01749e3ee065f",
    "-[AppleSamplerTests testStop]": "c7944b63823d70232b491b3e474f9cca",
    "-[AppleSamplerTests testVolume]": "ae2ac7a1a8403a5a2c1f060fa014fee5",
    "-[AudioPlayerTests testBasic]": "814872816a611dfd8d3ac8078c8e2daf",
    "-[AudioPlayerTests testGetCurrentTime]": "f880bd28b2e934e04e164910c9bec149",
    "-[AudioPlayerTests testSeek]": "f880bd28b2e934e04e164910c9bec149",
    "-[AudioPlayerTests testLoop]": "2965f1e7d77deddb213a1ad56060e6e3",
    "-[AudioPlayerTests testScheduleFile]": "e95797880728698bd7e951068861f736",
    "-[AudioPlayerTests testVolume]": "db7cd30abb91b8cf863f9cd410d87037",
    "-[AutomationCurveTests testCombingSettingParameterWithRamping]": "39cae1a8a64588668cf311739097c3fc",
    "-[AutoPannerTests testDepth]": "72b5cdb86c8443bf333ca6f5dcd1b5f0",
    "-[AutoPannerTests testFrequency]": "00c11617704aebf2a1fa74d7c89ec5bb",
    "-[AutoPannerTests testParameters]": "6a2dbb0fae5181864e771d32e467bfe0",
    "-[AutoWahOperationTests testAmplitude]": "362e3f261952f0cc4df9713e40077f0f",
    "-[AutoWahOperationTests testDefault]": "03a9f6d828add3a7377e1ac4cae886cf",
    "-[AutoWahOperationTests testWah]": "21f4d726d3145eeedd1861661fa5024d",
    "-[AutoWahTests testAmplitude]": "1ce5995c7363162d085e623127904e60",
    "-[AutoWahTests testBypass]": "54fb40c15242198d45b31b6a79187d07",
    "-[AutoWahTests testDefault]": "54fb40c15242198d45b31b6a79187d07",
    "-[AutoWahTests testMix]": "dec868e48496348677a6acc6a1497f31",
    "-[AutoWahTests testParamters]": "365434dae2647581335e584c1360d0e2",
    "-[AutoWahTests testWah]": "c3ed935a4364ff5de3e90a9fe28c8c34",
    "-[BalancerTests testDefault]": "26e2c62078ee266c120677b7386ab292",
    "-[BandPassButterworthFilterTests testBandwidth]": "4f7aa787c1ae2280b6c9f8df92e7d246",
    "-[BandPassButterworthFilterTests testCenterFrequency]": "772454ce00c4486ada5f9bc12f7a348f",
    "-[BandPassButterworthFilterTests testDefault]": "407342ee14815059db56bed4597dce56",
    "-[BandPassButterworthFilterTests testParameters]": "2cc8ca3ca84964f874e5a2c640affc3d",
    "-[BandRejectButterworthFilterTests testBandwidth]": "f34d7b7742a698a8715756ded2a7da7e",
    "-[BandRejectButterworthFilterTests testCenterFrequency]": "d60e76b5c1b91af991607144a5754087",
    "-[BandRejectButterworthFilterTests testDefault]": "fe2e60499f7c92c6fa7312a630512d63",
    "-[BandRejectButterworthFilterTests testParameters]": "927ee6f3be9aff40a9ea678d0467173a",
    "-[BitCrusherTests testBitDepth]": "9de9f603f95040fd7876dbcd3c731972",
    "-[BitCrusherTests testBypass]": "54fb40c15242198d45b31b6a79187d07",
    "-[BitCrusherTests testDefault]": "105f9a8d2d1d196ee13b0619bedfaa35",
    "-[BitCrusherTests testParameters]": "7f6aa7c85efff6688a67d9be140d3b47",
    "-[BitCrusherTests testSampleRate]": "ca73ba73e3bc6571213e9aad47b24199",
    "-[BitcrushTests testBitDepth]": "2bdedbd24c521b2af79a7187f3afc6e5",
    "-[BitcrushTests testDefault]": "8cff61296da70cbce1c2806da4be6e18",
    "-[BitcrushTests testParameters]": "999db76b7017a61a832fc52cfb30344a",
    "-[BitcrushTests testSampleRate]": "c936236612ab98307536f6239fffd2b9",
    "-[BrownianNoiseTests testAmplitude]": "f39d02113ca82527e3644b4eb8de03aa",
    "-[BrownianNoiseTests testDefault]": "687ea22a287762cd48048165334431de",
    "-[BrownianNoiseTests testGeneric]": "999a7c4d39edf55550b2b4ef01ae1860",
    "-[ChorusTests testDefault]": "eb29ccc4a496ff517ca38285e8cee75d",
    "-[ChorusTests testDepth]": "f3c86cc8924bf90d22770cf1da19dbf5",
    "-[ChorusTests testDryWetMix]": "2514063850f32cac013c517d7cb56018",
    "-[ChorusTests testFeedback]": "8f7a85a414a236f4698269a2c8c5122b",
    "-[ChorusTests testFrequency]": "c59fa716142db5e1bc610cff356cd90a",
    "-[ChorusTests testParameters]": "7292a4d8ab74c7f185b46c62415db7a2",
    "-[ChowningReverbTests testDefault]": "ffd48f502e2a5b2a7027d42b917a6667",
    "-[ClarinetTest testClarinet]": "1db0a9fa9901af443d404e7e18676cc0",
    "-[ClarinetTest testVelocity]": "26efd42f23e15319228f423373cac169",
    "-[ClipTests testClip]": "20eb02be61df5b53698c0af3dfba279e",
    "-[ClipTests testDefault]": "bd519e19179b7ffdddb1ad67080c84a6",
    "-[ClipperTests testDefault]": "4752449fc7d67d9e7826edfd70bb7c48",
    "-[ClipperTests testParameters1]": "fa53eac444024c8c0cb9be662a8f4766",
    "-[ClipperTests testParameters2]": "b52aa9b4d25fb0dfaeda0f1209dd412b",
    "-[CompressorTests testAttackTime]": "bcd0e52fc85be5c27568fa5bc2880c8c",
    "-[CompressorTests testDefault]": "820f969ed718ef77b0e472ef0d912325",
    "-[CompressorTests testHeadRoom]": "ae14f1fe5695e76bcb3882b279213668",
    "-[CompressorTests testMasterGain]": "482dab4495469eb41face0fc63651239",
    "-[CompressorTests testParameters]": "a69701ee2b399d88f611f47716e71802",
    "-[CompressorTests testThreshold]": "f5b9440c5a2b3d9eeb5843f9705f3688",
    "-[CostelloReverbTests testCutoffFrequency]": "e643ea11b0550b360fa3e0abe23087a2",
    "-[CostelloReverbTests testDefault]": "a123e2df39ef0d5a6161ccb2191b4646",
    "-[CostelloReverbTests testFeedback]": "598d99242343334fee311606d15159fd",
    "-[CostelloReverbTests testParametersSetAfterInit]": "fa8672989880c52c32a51f213b22688b",
    "-[CostelloReverbTests testParametersSetOnInit]": "fa8672989880c52c32a51f213b22688b",
    "-[DCBlockOperationTests testDefault]": "9df204fbc98bb8965081cb30a89715fc",
    "-[DCBlockTests testDefault]": "6d17509eee0059105454f3cad4499586",
    "-[DecimatorTests testDecimation]": "f43f42ff018cb51832bd3edd468f1e79",
    "-[DecimatorTests testDefault]": "8f54b5f06bbdab798895dfa6160281ba",
    "-[DecimatorTests testMix]": "8f54b5f06bbdab798895dfa6160281ba",
    "-[DecimatorTests testParameters]": "57ecec647cde72dceaafa584271dae46",
    "-[DecimatorTests testRounding]": "525912263ed6620ac09e258ae2fb59d0",
    "-[DelayOperationTests testDefault]": "ad1b433de4ec591cecb4c6ab4d91b7a5",
    "-[DelayOperationTests testFeedback]": "9da21169977f6ed9bd562820c2e8939f",
    "-[DelayOperationTests testParameters]": "615ed5bd20fdf38cc9710edcec7921fe",
    "-[DelayOperationTests testTime]": "9d3f5e4fb8b494e9c31afe05a5b8747b",
    "-[DelayTests testDryWetMix]": "bae671bdc1d2b25e27a464878de7ed37",
    "-[DelayTests testFeedback]": "fc5bd841a2e231c83758e7f9b7700700",
    "-[DelayTests testLowpassCutoff]": "ccfe4543c844964b8666b85a3e261b89",
    "-[DelayTests testParameters]": "a11ceff41e8936d613b6052619e698fb",
    "-[DelayTests testTime]": "c804d55b668935222260805e09b65e4a",
    "-[DiodeClipperTests testDefault]": "4f633eb51a145f2b8b626918babd6f35",
    "-[DiodeClipperTests testParameters1]": "0460d8018cc30fdeacee8be1ceda4363",
    "-[DiodeClipperTests testParameters2]": "c3950a1ffd121de1cf3b11a462f3d7f6",
    "-[DistortTests testDefault]": "fa0a94edd5e7d344626e46cdec8051b5",
    "-[DistortionTests testCubicTerm]": "26c1253c3fcc0e00d92da527d5242ca2",
    "-[DistortionTests testDecay]": "692f14416da285f5fe9c25070ac01090",
    "-[DistortionTests testDecimation]": "1e8d80186b864027eaa79be6bcf16044",
    "-[DistortionTests testDecimationMix]": "315c91e62edd0ad9602a558dee41e952",
    "-[DistortionTests testDefault]": "26c1253c3fcc0e00d92da527d5242ca2",
    "-[DistortionTests testDelay]": "10d17c4bd8eea884cdec3d952b333302",
    "-[DistortionTests testDelayMix]": "4849903175bb65542e808f5c809aa31f",
    "-[DistortionTests testFinalMix]": "b617281c6b9b6af7b48290d979c747b7",
    "-[DistortionTests testLinearTerm]": "26c1253c3fcc0e00d92da527d5242ca2",
    "-[DistortionTests testParameters]": "35e3d27d698ba590d638420a183945d5",
    "-[DistortionTests testPolynomialMix]": "a9a036956d3365511314eca3d75f0aac",
    "-[DistortionTests testRingModBalance]": "1fdef132e08389f0e721dca8e4466402",
    "-[DistortionTests testRingModFreq1]": "065ac853639985705bc3b8b7ee505845",
    "-[DistortionTests testRingModFreq2]": "6ed2f10c47dd3933bd7ebbb145d12a9a",
    "-[DistortionTests testRingModMix]": "21048edca809f7dacdf28cdb2b863452",
    "-[DistortionTests testRounding]": "5c1f9fae7b340e993a6731edd136763b",
    "-[DistortionTests testSoftClipGain]": "0297224fbd791963a9f29a2dd2316de0",
    "-[DistortionTests testSquaredTerm]": "26c1253c3fcc0e00d92da527d5242ca2",
    "-[DripTests testDampingFactor]": "0bf2b486133b29aedf558b2c00d5fc90",
    "-[DripTests testDefault]": "dd0ae698c3290253a97969a1a9dd2ea5",
    "-[DripTests testIntensity]": "a1cf4153c34661d789ef00e0f2886e24",
    "-[DryWetMixerTests testBalance0]": "54fb40c15242198d45b31b6a79187d07",
    "-[DryWetMixerTests testBalance1]": "4f77a76b108ab1c6e4a83c64bed94820",
    "-[DryWetMixerTests testDefault]": "9c5d2ee60fc0d012f59dc24e5097b305",
    "-[DryWetMixerTests testDetachWhileHavingAnInputMixer]": "9df204fbc98bb8965081cb30a89715fc",
    "-[DryWetMixerTests testDuplicateInput]": "54fb40c15242198d45b31b6a79187d07",
    "-[DynamicOscillatorTests testAmpitude]": "86497903abc5f53ef15fecf5660709bb",
    "-[DynamicOscillatorTests testDefault]": "7a3dc1fdc7f7c4d113ba9d1119143e67",
    "-[DynamicOscillatorTests testDetuningMultiplier]": "b9caf0d0e39aa5bf6073f861ff7cdd23",
    "-[DynamicOscillatorTests testDetuningOffset]": "ee8fc07672ed022a4c86146b18a38aca",
    "-[DynamicOscillatorTests testFrequency]": "33fc3ddee3e17226ddfc976f080b7e00",
    "-[DynamicOscillatorTests testParametersSetAfterInit]": "7ae6c2133daa0b06f24c29d979424e14",
    "-[DynamicOscillatorTests testParameters]": "7ae6c2133daa0b06f24c29d979424e14",
    "-[DynamicOscillatorTests testRamping]": "5336499be4b3eb5284e1d929c612341b",
    "-[DynamicOscillatorTests testNewAutomationFrequency]": "5c8c218d2c21e8c436493bb09a80a47a",
    "-[DynamicOscillatorTests testNewAutomationAmplitude]": "b8e89a1380f3159979b37d3f8dff441e",
    "-[DynamicOscillatorTests testNewAutomationMultiple]": "3b499b52ae246e9c0403bc4f79b0e050",
    "-[DynamicOscillatorTests testNewAutomationDelayed]": "805e616c4ee5971d698c79982d502227",
    "-[DynamicOscillatorTests testSetWavetable]": "b8a90867e0736e04de7dd6e4794ec494",
    "-[DynamicOscillatorTests testGetWavetableValues]": "33fc3ddee3e17226ddfc976f080b7e00",
    "-[DynamicOscillatorTests testWavetableUpdateHandler]": "33fc3ddee3e17226ddfc976f080b7e00",
    "-[DynamicRangeCompressorTests testAttackDuration]": "03a9f6d828add3a7377e1ac4cae886cf",
    "-[DynamicRangeCompressorTests testDefault]": "03a9f6d828add3a7377e1ac4cae886cf",
    "-[DynamicRangeCompressorTests testParameters]": "a38a256237c9b031ea37caac85f5a248",
    "-[DynamicRangeCompressorTests testRatio]": "53dea545623f286a1d6081dfdfcb938b",
    "-[DynamicRangeCompressorTests testReleaseDuration]": "5108885f7ac7f28eafd287237df3fc7f",
    "-[DynamicRangeCompressorTests testThreshold]": "3ae3043bd320c80c7699e623c4029a95",
    "-[DynamicsProcessorTests testDefault]": "70fa0fb4d94ccb4a36fdd55be270d0e8",
    "-[DynaRangeCompressorTests testAttackTime]": "f65f28d9f09afa9f68a97d88cd10e7fc",
    "-[DynaRangeCompressorTests testDefault]": "f65f28d9f09afa9f68a97d88cd10e7fc",
    "-[DynaRangeCompressorTests testParameters]": "f65f28d9f09afa9f68a97d88cd10e7fc",
    "-[DynaRangeCompressorTests testRage]": "e40d48cb65883d256d76fb387e390d6a",
    "-[DynaRangeCompressorTests testRatio]": "f65f28d9f09afa9f68a97d88cd10e7fc",
    "-[DynaRangeCompressorTests testReleaseTime]": "f65f28d9f09afa9f68a97d88cd10e7fc",
    "-[DynaRangeCompressorTests testThreshold]": "dfc9376130ed529cbd26df89913af0b2",
    "-[EqualizerFilterTests testBandwidth]": "37caea5ad60e4eb81ef0a9d600e0bdca",
    "-[EqualizerFilterTests testCenterFrequency]": "57bb5353379d412e5f8aac2d54a2116c",
    "-[EqualizerFilterTests testDefault]": "de3220fc34a8f043a85507f6d4e09da1",
    "-[EqualizerFilterTests testGain]": "cd9efba4beb940cc244bf12a9a88b100",
    "-[EqualizerFilterTests testParameters]": "f773c27eb3c08bf2467788bc9adf1ae7",
    "-[ExpanderTests testDefault]": "df47ebd58262370633c79f9813780d23",
    "-[FFTTapTests testBasic]": "31521ba97588f48cb20505205b0cd8f3",
    "-[FFTTapTests testWithoutNormalization]": "df0a73e2987dc2490ff17c0de477fbf3",
    "-[FFTTapTests testWithZeroPadding]": "31521ba97588f48cb20505205b0cd8f3",
    "-[FMOscillatorOperationTests testDefault]": "e82a86ae4e7d47f24eeba9700e4745d4",
    "-[FMOscillatorOperationTests testFMOscillatorOperation]": "691ee890bdeee00f0b5e79d471fd82ee",
    "-[FMOscillatorTests testDefault]": "2ab6d83efd88014de7c8af0cde83f784",
    "-[FMOscillatorTests testParametersSetAfterInit]": "ab0df0b1dd221c152cc56510d39486e4",
    "-[FMOscillatorTests testParametersSetOnInit]": "ab0df0b1dd221c152cc56510d39486e4",
    "-[FaderTests testBypass]": "54fb40c15242198d45b31b6a79187d07",
    "-[FaderTests testDefault]": "54fb40c15242198d45b31b6a79187d07",
    "-[FaderTests testFlipStereo]": "8dab5ffc9177b93149e2db72693957ec",
    "-[FaderTests testFlipStereoThrice]": "8dab5ffc9177b93149e2db72693957ec",
    "-[FaderTests testFlipStereoTwice]": "6b8ab871601222e48b3a4830a4b93ca7",
    "-[FaderTests testGain]": "22f4e39ca1dae5dc2866513027236ef6",
    "-[FaderTests testMany]": "54fb40c15242198d45b31b6a79187d07",
    "-[FaderTests testMixToMono]": "0472c301b0d087e7b65b24b378ea68ea",
    "-[FaderTests testParameters]": "03a9f6d828add3a7377e1ac4cae886cf",
    "-[FaderTests testParameters2]": "22f4e39ca1dae5dc2866513027236ef6",
    "-[FlangerTests testDefault]": "52e5e21ee742599e34ef0fa7c97706de",
    "-[FlangerTests testDepth]": "ccaa9fc24ad58586c8f9c067590acb23",
    "-[FlangerTests testDryWetMix]": "3abd3c318e933fd07bbed4196e959045",
    "-[FlangerTests testFeedback]": "15b69c2abab00f1c432b826182fae3f1",
    "-[FlangerTests testFrequency]": "3077ceddbc708902679d036e06c08e47",
    "-[FlangerTests testParameters]": "c993f77b80325b52ecdcae7a2f6adc20",
    "-[FlatFrequencyResponseReverbTests testDefault]": "72129ee842ad69ed786521896e97759f",
    "-[FlatFrequencyResponseReverbTests testLoopDuration]": "b52e5fe292fae790c8ebf997347774a3",
    "-[FlatFrequencyResponseReverbTests testReverbDuration]": "e340e9a0a849e3a29e8e97751ad084e2",
    "-[FluteTests testFlute]": "264beca825da812550d7b7b06fbaf3ee",
    "-[FluteTests testVelocity]": "f8596d2c7dedccd52c0b60adc4d84821",
    "-[FormantFilterTests testAttack]": "98537dac107c7f1e0fac9c3f92065bec",
    "-[FormantFilterTests testCenterFrequency]": "1a859eeff47f270ba3936c758fb01f01",
    "-[FormantFilterTests testDecay]": "809e96c5f373b0f19e6f87e03ee76ed5",
    "-[FormantFilterTests testDefault]": "6e84378d8de355d4c3f8444f318f40f4",
    "-[HighPassButterworthFilterOperationTests testDefault]": "e3492d84c06778ab40c5ff16357e4f27",
    "-[HighPassButterworthFilterTests testCutoffFrequency]": "c03d5de4115626af1b68b1991eb9e89e",
    "-[HighPassButterworthFilterTests testDefault]": "56ae1b2b21b9ba561349e3c41b91d1b8",
    "-[HighPassFilterOperationTests testDefault]": "aba2295108d57c1eb8bcd59abc1f290f",
    "-[HighPassFilterOperationTests testHalfPowerPoint]": "6470c1375608787b34c6e563b89c088d",
    "-[HighPassFilterTests testCutoffFrequency]": "ec9760f39a86730ff9a93edc6fef44ae",
    "-[HighPassFilterTests testDefault]": "c2f075a9ca06aedd011034b3a4622f38",
    "-[HighPassFilterTests testParameters]": "1041f6c67b1a14a1f26c0bc9a193d6e9",
    "-[HighPassFilterTests testResonance]": "281a69126bc59adda171f34482c991fa",
    "-[HighShelfFilterTests testDefault]": "54fb40c15242198d45b31b6a79187d07",
    "-[HighShelfFilterTests testGain]": "a995dee54a1acb394079015150419384",
    "-[HighShelfFilterTests testParameters]": "a995dee54a1acb394079015150419384",
    "-[HighShelfParametricEqualizerFilterTests testCenterFrequency]": "682a15ce9b6574bdfb41eb301d852e1b",
    "-[HighShelfParametricEqualizerFilterTests testDefault]": "e464517b2960e66c64a45ef9813b3963",
    "-[HighShelfParametricEqualizerFilterTests testGain]": "4a8987a9d7c30f348ab1fe731f5751b8",
    "-[HighShelfParametricEqualizerFilterTests testParameters]": "e8cdd4e17fa8fb24563b4bbc5608f3b1",
    "-[HighShelfParametricEqualizerFilterTests testQ]": "d39c1fdfbfb01ea881c0e9d3c90fb1fb",
    "-[KorgLowPassFilterOperationTests testDefault]": "196c111186154859f915375650d14a74",
    "-[KorgLowPassFilterOperationTests testParameters]": "4d20e66cac102ac39fd541154c3c5e82",
    "-[KorgLowPassFilterTests testCutoffFrequency]": "88b5df3d6d5554707c1581292de31ced",
    "-[KorgLowPassFilterTests testDefault]": "88d09cf1d4c5403ab6f6fe29da313cdb",
    "-[KorgLowPassFilterTests testParameters]": "ade3a3cde9f8a6f83192c94c28ba3ae7",
    "-[KorgLowPassFilterTests testResonance]": "4855fb186eb4aa025f09fa820f2ca9fb",
    "-[KorgLowPassFilterTests testSaturation]": "c6c2c61bbf802a64be7fe3a5bc4b62a3",
    "-[LowPassButterworthFilterOperationTests testDefault]": "fb9172572f54572721fbb4f6bb257c41",
    "-[LowPassButterworthFilterTests testCutoffFrequency]": "57aef7ace5c7b62e96fda048a382b80e",
    "-[LowPassButterworthFilterTests testDefault]": "2fe88d57fc4224c05376fcdbe3e2049d",
    "-[LowPassFilterOperationTests testDefault]": "60ac545bd67dc50b572b5be62aeeaa5c",
    "-[LowPassFilterTests testCutoffFrequency]": "241f2bf4c46f093da10607e312d631ff",
    "-[LowPassFilterTests testDefault]": "a414ebf3cb592262f7b85cdbe950e006",
    "-[LowPassFilterTests testParameters]": "4c5d8091e4711af9a145a51d549cf1be",
    "-[LowPassFilterTests testResonance]": "0e3f8b2ec2ad949143564d8e70a9466a",
    "-[LowShelfFilterTests testCutoffFrequency]": "76f6b57ec0eb0b3c49c7841bd2196dcc",
    "-[LowShelfFilterTests testDefault]": "54fb40c15242198d45b31b6a79187d07",
    "-[LowShelfFilterTests testGain]": "ffa34b3e2698569ece7b6c875057f0f7",
    "-[LowShelfParametricEqualizerFilterTests testCornerFrequency]": "b27393079cf0cd1866ee222ff875879c",
    "-[LowShelfParametricEqualizerFilterTests testDefault]": "9777cc2e319c6543606dc2f1413a44e5",
    "-[LowShelfParametricEqualizerFilterTests testGain]": "875d4a158b9fa1b8ee3686985f7f654e",
    "-[LowShelfParametricEqualizerFilterTests testParameters]": "613773ed5eae1459a720b87a6e57ce13",
    "-[LowShelfParametricEqualizerFilterTests testQ]": "858a9d61fcc911d5b3e076f0875b9b2d",
    "-[MandolinStringTests testAmplitude]": "6eb67e5c2defc9e1e51c1df6f9310d60",
    "-[MandolinStringTests testMandolin]": "f219d8ba04a3cc19c4235c651ecc9367",
    "-[MetalBarTests testDefault]": "b7a1cd8a30ec59574e69106b0ae6ee85",
    "-[ModalResonanceFilterOperationTests testDefault]": "d80a33db714eeada0bbd238c7dc978ea",
    "-[ModalResonanceFilterTests testDefault]": "5af70d55520ce60307988e5ff03466d3",
    "-[ModalResonanceFilterTests testFrequency]": "fdbddc719d3c48bd43325dc7d4200d99",
    "-[ModalResonanceFilterTests testParameters]": "413299cba9d16f56aef8bbbb5fc78da7",
    "-[ModalResonanceFilterTests testQualityFactor]": "53f6857998ed28f9947a456ac6a251cf",
    "-[MoogLadderFilterTests testDefault]": "13013918edf647994c2a4d3f7a8f1c7f",
    "-[MoogLadderTests testCutoffFrequency]": "81d077252b0490bf92491a4b7ac3cfbd",
    "-[MoogLadderTests testDefault]": "f5f0d62289d4674939d5b5371e37eb6a",
    "-[MoogLadderTests testParameters]": "ba6845449ac76c94d6e59b6541b3ff64",
    "-[MoogLadderTests testResonance]": "cacc7d372c9a502dfc9171c5413aa005",
    "-[MorphingOscillatorOperationTests testDefault]": "f4cc261bdf98ae17320f9561941c8664",
    "-[MorphingOscillatorTests testDefault]": "22f4e39ca1dae5dc2866513027236ef6",
    "-[MorphingOscillatorTests testParametersSetAfterInit]": "27d346246fed34eea572e30060f30950",
    "-[MorphingOscillatorTests testParametersSetOnInit]": "27d346246fed34eea572e30060f30950",
    "-[NodeTests testAutomationAfterDelayedConnection]": "f5f2cf536578d5a037c88d2cd458eb10",
    "-[NodeTests testDisconnect]": "814872816a611dfd8d3ac8078c8e2daf",
    "-[NodeTests testDynamicConnection]": "56705e42509ee347224ffe2da5a20404",
    "-[NodeTests testDynamicConnection2]": "d1e09a5effb8e6a0975fa455786a9f4a",
    "-[NodeTests testDynamicConnection3]": "8bc9622131aee964736a171418ae5f94",
    "-[NodeTests testDynamicOutput]": "758f51518545b68c467f23296c741377",
    "-[NodeTests testNodeBasic]": "4a0880ad458d89a08afe85882a18f82c",
    "-[NodeTests testNodeConnection]": "ba6ade71600adc39ac3c2ad96725679e",
    "-[NodeTests testNodeDetach]": "814872816a611dfd8d3ac8078c8e2daf",
    "-[NodeTests testTwoEngines]": "42b1eafdf0fc632f46230ad0497a29bf",
    "-[OperationGeneratorParametersTests testSetParameters]": "0b20180a92ea138d82977d4d38cf9524",
    "-[OperationGeneratorParametersTests testSetParameters2]": "90252f37c84a34a81155398a72cc172b",
    "-[OperationGeneratorParametersTests testSetParameters3]": "3bc8f1dd24129853970f9271d6694795",
    "-[OscillatorTests testAmpitude]": "86497903abc5f53ef15fecf5660709bb",
    "-[OscillatorTests testDefault]": "f4cc261bdf98ae17320f9561941c8664",
    "-[OscillatorTests testDetuningMultiplier]": "b9caf0d0e39aa5bf6073f861ff7cdd23",
    "-[OscillatorTests testDetuningOffset]": "ee8fc07672ed022a4c86146b18a38aca",
    "-[OscillatorTests testFrequency]": "33fc3ddee3e17226ddfc976f080b7e00",
    "-[OscillatorTests testGeneric]": "b9625eb52a6e6dfd7faaeec6c5048c12",
    "-[OscillatorTests testNewAutomationAmplitude]": "de84a09903129c3c22cc035cfd53ff05",
    "-[OscillatorTests testNewAutomationDelayed]": "170f682ea6ad60e6a94ad48aba159efe",
    "-[OscillatorTests testNewAutomationFrequency]": "5c8c218d2c21e8c436493bb09a80a47a",
    "-[OscillatorTests testNewAutomationMultiple]": "c1840e8045b8d976ca0aaddb984da4c5",
    "-[OscillatorTests testParameters]": "7ae6c2133daa0b06f24c29d979424e14",
    "-[OscillatorTests testParametersSetAfterInit]": "7ae6c2133daa0b06f24c29d979424e14",
    "-[OscillatorTests testRamping]": "acde3b3a53abfd2bad3d37b71845bb9e",
    "-[PWMOscillatorTests testAmplitude]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testDefault]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testDetuningMultiplier]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testDetuningOffset]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testFrequency]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testParameters]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testParametersSetAfterInit]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testPulseWidth]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PannerTests testBypass]": "54fb40c15242198d45b31b6a79187d07",
    "-[PannerTests testDefault]": "25fdfa38bbfc45d60ec1dfa05b4e4fb1",
    "-[PannerTests testPanLeft]": "c451bfebeb872babb39d5e507f0605d4",
    "-[PannerTests testPanRight]": "6b8ab871601222e48b3a4830a4b93ca7",
    "-[ParameterAutomationTests testDelayedAutomation]": "b4c68d2afd4fdbb5074b7ddc655ea5c6",
    "-[PeakLimiterTests testAttackTime]": "1d99a1fb9af935b0fb99a55e5fd2b156",
    "-[PeakLimiterTests testDecayTime]": "d17a29df2948e5c55f99f2120c99961b",
    "-[PeakLimiterTests testDefault]": "d17a29df2948e5c55f99f2120c99961b",
    "-[PeakLimiterTests testParameters]": "991a291b33cf1b3f89f30d94e473a688",
    "-[PeakLimiterTests testPreGain]": "ba69f3bbbee341054e3a2c5a76d3096f",
    "-[PeakingParametricEqualizerFilterTests testCenterFrequency]": "5cee410823ba77d1c24e3ae431b545f8",
    "-[PeakingParametricEqualizerFilterTests testDefault]": "e05f21ddbda31cb64a31777e9f71e35a",
    "-[PeakingParametricEqualizerFilterTests testGain]": "696609fe07c572437e38528f9688e090",
    "-[PeakingParametricEqualizerFilterTests testParameters]": "40bc5e2ecd80632839fcf94b7ccf78a8",
    "-[PeakingParametricEqualizerFilterTests testQ]": "a11fc5ec2e590ae00d5b0eea816089b0",
    "-[PhaseDistortionOscillatorTests testAmplitude]": "8744e5a152b5838322c657d06b41f39c",
    "-[PhaseDistortionOscillatorTests testDefault]": "05e9a49726d7202b48c69bfbd921bdab",
    "-[PhaseDistortionOscillatorTests testDetuningMultiplier]": "ce2e581b0388d4f758e08bf9ce591b40",
    "-[PhaseDistortionOscillatorTests testDetuningOffset]": "787a546c70f61d15f7b7e986e53b15c3",
    "-[PhaseDistortionOscillatorTests testFrequency]": "57c3ddd6de2c581edc2b1729d9234dad",
    "-[PhaseDistortionOscillatorTests testParameters]": "397791dfd102dfbd63e583c1432a24b2",
    "-[PhaseDistortionOscillatorTests testParametersSetAfterInit]": "260881270e092c6bfe66835bc3b4ff4d",
    "-[PhaseDistortionOscillatorTests testPhaseDistortion]": "1e50f90f1144c15ae5cab6af16cd7191",
    "-[PhaseLockedVocoderTests testDefault]": "d3522d2e9cad9467740cbcb3624887f2",
    "-[PhasorTests testDefault]": "3828cd394361df9739360d1b910516cf",
    "-[PinkNoiseOperationTests testAmplitude]": "de15af9138e2d5c993fd207b028e877c",
    "-[PinkNoiseOperationTests testDefault]": "79e0b102124e0b7521fb277d3f8d27f9",
    "-[PinkNoiseOperationTests testParameterSweep]": "ac20cbf3b0342430bab4350de2619feb",
    "-[PinkNoiseTests testAmplitude]": "6704180ca2db755fd17742bb5d2da047",
    "-[PinkNoiseTests testDefault]": "79e0b102124e0b7521fb277d3f8d27f9",
    "-[PitchShifterTests testCrossfade]": "ceb1ca384850bc2ff6007260d84065de",
    "-[PitchShifterTests testDefault]": "f76d94b162052e40bda59d76e8cfb279",
    "-[PitchShifterTests testParameters]": "623e44df5eb8fbc718baeb0e7cf78229",
    "-[PitchShifterTests testShift]": "fb4289e9752afdfb0e4143d71961895f",
    "-[PitchShifterTests testWindowSize]": "86009225715532a2f829bb66dcd3c09b",
    "-[PitchTapTests testBasic]": "10e7831ee61299f51dd0ef03fa50bb25",
    "-[PluckedStringOperationTests testDefault]": "bdef4981144f808c1a375a277f4da66f",
    "-[PluckedStringTests testDefault]": "9e2d3aa3b50fa53a43b798901f0cb0e5",
    "-[ResonantFilterOperationTests testDefault]": "b4433ed6c0c08b8c21141afeaf984464",
    "-[ResonantFilterOperationTests testParameters1]": "084201aaf20c67dfc4867e0bae54e551",
    "-[ResonantFilterOperationTests testParameters2]": "50e835fabdf04c28c427bed060a0b674",
    "-[ResonantFilterOperationTests testParameters3]": "9df204fbc98bb8965081cb30a89715fc",
    "-[ResonantFilterTests testBandwidth]": "6c50c738100665603026ee992143028e",
    "-[ResonantFilterTests testDefault]": "ed5bb736816745b6fdf94a02b6b8c061",
    "-[ResonantFilterTests testFrequency]": "cb2829ed2106a86bddf19e718df76147",
    "-[ResonantFilterTests testParameters]": "4ae44b57b64f4f8f0c4173120f9aa78b",
    "-[ReverbTests testBypass]": "54fb40c15242198d45b31b6a79187d07",
    "-[ReverbTests testCathedral]": "fb93ca1d8a6ece8686b35ea0610c002f",
    "-[ReverbTests testDefault]": "8adbdf9c9a3329aa8677852e4e53273d",
    "-[ReverbTests testSmallRoom]": "bf73d7cb919289688abc633106034f6c",
    "-[ReverberateWithChowningTests testDefault]": "4c8d8c47d3a2835f57977f279d36307a",
    "-[ReverberateWithCombFilterTests testDefault]": "3a8d21f2336fb2c4d05ed72a38a7807c",
    "-[ReverberateWithCostelloTests testDefault]": "a123e2df39ef0d5a6161ccb2191b4646",
    "-[ReverberateWithFlatFrequencyResponseTests testDefault]": "560ecfc9ea10b6dd932144d4006d6067",
    "-[RhinoGuitarProcessorTests testDefault]": "5bc5d22e785b2e2dd0c8dbce5011d493",
    "-[RhinoGuitarProcessorTests testDistortion]": "1f4c9ea840443e22025c584c02626497",
    "-[RhinoGuitarProcessorTests testHighGain]": "1f4c9ea840443e22025c584c02626497",
    "-[RhinoGuitarProcessorTests testLowGain]": "c5b0e4c173ca4ce4cc0b441f439ab36e",
    "-[RhinoGuitarProcessorTests testMidGain]": "b4e82fe84bca1e52f83d4fdf6aa3b158",
    "-[RhinoGuitarProcessorTests testPostGain]": "b851031e803329cb43ef855eeac61de2",
    "-[RhinoGuitarProcessorTests testPreGain]": "fccd70ce791a9098a7514f690716d3aa",
    "-[RhodesPianoKeyTests testAmplitude]": "d349565cae5618b5d6326f20623d8ea5",
    "-[RhodesPianoKeyTests testRhodesPiano]": "7341d6c60e58433aa7992ee080c297c4",
    "-[RingModulatorTests testDefault]": "ff3d88168749e8258993a1ac9049999d",
    "-[RolandTB303FilterTests testCutoffFrequency]": "c5d4b284f82da7253c44a7bd0652ec93",
    "-[RolandTB303FilterTests testDefault]": "605b967d1ae5e22ac69944138629ba06",
    "-[RolandTB303FilterTests testDistortion]": "d5e5d9c5c6e2f9f968ee815b4fddcde2",
    "-[RolandTB303FilterTests testParameters]": "83144a76e6a155816b275a7f20435a3d",
    "-[RolandTB303FilterTests testResonance]": "bafc04f77b0447daff50d662f6cd03ef",
    "-[RolandTB303FilterTests testResonanceAsymmetry]": "d2dd04debdbab595b6bb4ce038fbb8c7",
    "-[SamplerTests testSampler]": "7818bbaee9cbe19615645f714e6a9a43",
    "-[SawtoothTests testDefault]": "379388bf41f4ece5cf274bf53f270c46",
    "-[SawtoothWaveTests testDefault]": "2a5f4c75768a09c068f2c27377142aa7",
    "-[SequencerTrackTests testLoop]": "dfab5f544f9d714ed0fb95d4e077699b",
    "-[SequencerTrackTests testOneShot]": "8d547bfc6b1c47e82deb53ed6646c389",
    "-[SequencerTrackTests testTempo]": "65f227785671ce944a8cc5ed2b66a4c1",
    "-[SequencerTrackTests testChangeTempo]": "dab1ef7ceb90506a4eee6af31a19a886",
    "-[ShakerTests testShaker]": "709fbb05ec97f539079dd77e8c96bc4d",
    "-[ShakerTests testShakerAmplitude]": "57b501c34d5b4114ff8b1464a6842103",
    "-[ShakerTests testShakerType]": "998478fb4c871a653b296033d2318f4e",
    "-[SineWaveTests testDefault]": "91ec96732b1d1d40a585b6415eef8b51",
    "-[SmoothDelayTests testDefault]": "2ea423e3049f2b2d14d218f376a4542a",
    "-[SmoothDelayTests testFeedback]": "803a096f54a75509ac7a2e62f9ebc42f",
    "-[SmoothDelayTests testParameters]": "880f77bb6c10256c0889fe330d633cc8",
    "-[SmoothDelayTests testParameterSweep]": "ae10982f9d9a73b198e84820b84682c7",
    "-[SmoothDelayTests testTime]": "eb24180940df02842993b72b274e7e08",
    "-[SquareTests testDefault]": "9e7c2af4b9e70a73ca7d8453d59d6953",
    "-[SquareWaveTests testDefault]": "9d4465fdcff811f568807c43e41859e1",
    "-[StereoFieldLimiterTests testDefault]": "22f4e39ca1dae5dc2866513027236ef6",
    "-[StereoFieldLimiterTests testHalf]": "c7cd66354089e1ce7cc6aa491cc27c6a",
    "-[StereoFieldLimiterTests testNone]": "c451bfebeb872babb39d5e507f0605d4",
    "-[StringResonatorOperationTests testDefault]": "8c2e716b404d79281e7f9771c271d544",
    "-[StringResonatorTests testBandwidth]": "98567d95a1ae896aec2c75fe42e511a6",
    "-[StringResonatorTests testDefault]": "5e979c0a5701a21159dc3249e8b12b8f",
    "-[StringResonatorTests testFrequency]": "c5ffa2b84a480194ce3ed68219c9a468",
    "-[StringResonatorTests testParameters]": "73fd3a4a0479bedd616c9096bec33489",
    "-[SynthTests testChord]": "155d8175419836512ead0794f551c7a0",
    "-[SynthTests testMonophonicPlayback]": "77fb882efcaf29c3a426036d85d04090",
    "-[SynthTests testParameterInitialization]": "e27794e7055b8ebdbf7d0591e980484e",
    "-[TableTests testReverseSawtooth]": "01c214265dd49e5ab627e5b4f4d00fe0",
    "-[TableTests testSawtooth]": "7a3dc1fdc7f7c4d113ba9d1119143e67",
    "-[TableTests testSine]": "f4cc261bdf98ae17320f9561941c8664",
    "-[TableTests testTriangle]": "54fb40c15242198d45b31b6a79187d07",
	"-[TableTests testHarmonicWithPartialAmplitudes]": "75d01266f4d35ea0074a1bf469d63f27",
    "-[TanhDistortionTests testDefault]": "0f96753886373467bd65e7b4542556b0",
    "-[TanhDistortionTests testNegativeShapeParameter]": "9f977e67430fc99635be73065e5423e2",
    "-[TanhDistortionTests testParameters]": "58a3a7d299864f0555ba5e50fb261cc5",
    "-[TanhDistortionTests testPositiveShapeParameter]": "98fb60205f7cbee70b1e3f07b4d43d16",
    "-[TanhDistortionTests testPostgain]": "9e5327367e2cc61d5447d4bb53df7f7c",
    "-[TanhDistortionTests testPregain]": "fa0a94edd5e7d344626e46cdec8051b5",
    "-[ThreePoleLowPassFilterOperationTests testParameterSweep]": "57b05266ea3b6e74c4e0d03c58794caa",
    "-[ThreePoleLowpassFilterTests testCutoffFrequency]": "1d8dd05b46a474c96a3c3869de525b3e",
    "-[ThreePoleLowpassFilterTests testDefault]": "2fbccb5dbeeb57f56c086e3bc68b95e7",
    "-[ThreePoleLowpassFilterTests testDistortion]": "5e07622b3282f43ea8c4f7483d8d4255",
    "-[ThreePoleLowpassFilterTests testParameters]": "54d2b8aa2a9cd970477d97073e266415",
    "-[ThreePoleLowpassFilterTests testResonance]": "b439cc1aab95322b251d2cfe7dc4497f",
    "-[ToneComplementFilterTests testDefault]": "9af85c8d0fb927cf3277b5eafb60e583",
    "-[ToneComplementFilterTests testHalfPowerPoint]": "5656b63c40ec76954f38d362dce0536c",
    "-[ToneFilterTests testDefault]": "d69247e09df45c5052f9a185f0a7b06f",
    "-[ToneFilterTests testHalfPowerPoint]": "3484c7c483aed0a42a77a47f097d8181",
    "-[TransientShaperTests testAttackAmount]": "8dc174524e12f04b83fcdece433a9ead",
    "-[TransientShaperTests testDefault]": "9f863d2aac9d2d87d5ed817a882b8a40",
    "-[TransientShaperTests testInputAmount]": "7e15fcadcc69a9a7b5566e6b06c422ce",
    "-[TransientShaperTests testOutputAmount]": "77c84f5cb7886ed24ee746b1c8aae7cd",
    "-[TransientShaperTests testParameters]": "b78e6daa945a07253e5517599850b0b4",
    "-[TransientShaperTests testReleaseAmount]": "9f863d2aac9d2d87d5ed817a882b8a40",
    "-[TremoloTests testDepth]": "a8b6e86230bfe9f817f58f10f0481032",
    "-[TremoloTests testFrequency]": "f2b8a31e98bd21fb91052f7de06162ff",
    "-[TremoloTests testParameters]": "5873a12337473a5cafa83683d3ae6a31",
    "-[TriangleTests testParameterSweep]": "65fc18963547c200e7154c987b2c73b7",
    "-[TriangleWaveTests testParameterSweep]": "e7d8cc44420bbf3474ff7fae34e6895b",
    "-[TubularBellsTests testAmplitude]": "3c14777a9e2c94336b7dc349b5ccefc3",
    "-[TubularBellsTests testTubularBells]": "dc87914ab7836f859709c3d84df1d4e5",
    "-[VariableDelayOperationTests testParameterSweep]": "8d4d8ed97e5bb0ee6ad9158337035f16",
    "-[VariableDelayTests testDefault]": "556d802ca45c4ab4716c7631314aafd9",
    "-[VariableDelayTests testFeedback]": "30913c3a3946abaf234b89a4c483ef31",
    "-[VariableDelayTests testMaximum]": "40592232b7a45563cc1c61f5e137b87c",
    "-[VariableDelayTests testMaximumSurpassed]": "40592232b7a45563cc1c61f5e137b87c",
    "-[VariableDelayTests testParametersSetAfterInit]": "690eff0c43921b6a0463423d56e6de6e",
    "-[VariableDelayTests testParametersSetOnInit]": "690eff0c43921b6a0463423d56e6de6e",
    "-[VariableDelayTests testTime]": "5d3b543cec4ccbc34d3be25642316ba6",
    "-[VocalTractOperationTests testDefault]": "5b3296351674e4e4d3a5cca9a1bf355f",
    "-[VocalTractOperationTests testParameterSweep]": "e846c8d1a61587825d0c699d162e3cd0",
    "-[VocalTractTests testDefault]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testFrequency]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testNasality]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testParametersSetAfterInit]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testParametersSetOnInit]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testTenseness]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testTongueDiameter]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testTonguePosition]": "9df204fbc98bb8965081cb30a89715fc",
    "-[WhiteNoiseOperationTests testAmplitude]": "1fdb585751ad480ad39f16cae4589cf7",
    "-[WhiteNoiseOperationTests testDefault]": "bbe4898f76a6bd42a573f618ba831372",
    "-[WhiteNoiseOperationTests testParameterSweep]": "f8bf5004f0d3c528b491a65c7db78865",
    "-[WhiteNoiseTests testAmplitude]": "1bdd36a87d9d1a9df891eac4073b9eb3",
    "-[WhiteNoiseTests testDefault]": "bbe4898f76a6bd42a573f618ba831372",
    "-[ZitaReverbTests testDefault]": "500d130f22444481b4ddd92aa7f8079c",
    "-[ZitaReverbTests testParametersSetAfterInit]": "b2a033a22e2684247ed29f82c58c0fc8",
    "-[ZitaReverbTests testParametersSetOnInit]": "b2a033a22e2684247ed29f82c58c0fc8",
]



