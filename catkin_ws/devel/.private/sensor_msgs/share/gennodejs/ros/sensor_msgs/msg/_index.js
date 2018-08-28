
"use strict";

let CompressedImage = require('./CompressedImage.js');
let NavSatStatus = require('./NavSatStatus.js');
let PointCloud2 = require('./PointCloud2.js');
let RegionOfInterest = require('./RegionOfInterest.js');
let ChannelFloat32 = require('./ChannelFloat32.js');
let RelativeHumidity = require('./RelativeHumidity.js');
let Temperature = require('./Temperature.js');
let JoyFeedbackArray = require('./JoyFeedbackArray.js');
let TimeReference = require('./TimeReference.js');
let PointCloud = require('./PointCloud.js');
let LaserScan = require('./LaserScan.js');
let MultiDOFJointState = require('./MultiDOFJointState.js');
let FluidPressure = require('./FluidPressure.js');
let PointField = require('./PointField.js');
let Image = require('./Image.js');
let LaserEcho = require('./LaserEcho.js');
let JoyFeedback = require('./JoyFeedback.js');
let NavSatFix = require('./NavSatFix.js');
let MultiEchoLaserScan = require('./MultiEchoLaserScan.js');
let BatteryState = require('./BatteryState.js');
let MagneticField = require('./MagneticField.js');
let JointState = require('./JointState.js');
let Illuminance = require('./Illuminance.js');
let Joy = require('./Joy.js');
let Range = require('./Range.js');
let Imu = require('./Imu.js');
let CameraInfo = require('./CameraInfo.js');

module.exports = {
  CompressedImage: CompressedImage,
  NavSatStatus: NavSatStatus,
  PointCloud2: PointCloud2,
  RegionOfInterest: RegionOfInterest,
  ChannelFloat32: ChannelFloat32,
  RelativeHumidity: RelativeHumidity,
  Temperature: Temperature,
  JoyFeedbackArray: JoyFeedbackArray,
  TimeReference: TimeReference,
  PointCloud: PointCloud,
  LaserScan: LaserScan,
  MultiDOFJointState: MultiDOFJointState,
  FluidPressure: FluidPressure,
  PointField: PointField,
  Image: Image,
  LaserEcho: LaserEcho,
  JoyFeedback: JoyFeedback,
  NavSatFix: NavSatFix,
  MultiEchoLaserScan: MultiEchoLaserScan,
  BatteryState: BatteryState,
  MagneticField: MagneticField,
  JointState: JointState,
  Illuminance: Illuminance,
  Joy: Joy,
  Range: Range,
  Imu: Imu,
  CameraInfo: CameraInfo,
};
