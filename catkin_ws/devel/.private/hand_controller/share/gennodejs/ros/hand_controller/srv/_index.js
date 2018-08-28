
"use strict";

let checkGrasp = require('./checkGrasp.js')
let CashMotion = require('./CashMotion.js')
let SetMotorSteps = require('./SetMotorSteps.js')
let getRecordedBuffer = require('./getRecordedBuffer.js')
let stopRecording = require('./stopRecording.js')
let MotorSteps = require('./MotorSteps.js')
let DemoGetForceDistribution = require('./DemoGetForceDistribution.js')
let Classify = require('./Classify.js')
let SetMotorAngles = require('./SetMotorAngles.js')
let rubbingWithForce = require('./rubbingWithForce.js')
let ClassifyOptoforceData = require('./ClassifyOptoforceData.js')
let MotorAngles = require('./MotorAngles.js')
let AddTrial = require('./AddTrial.js')
let cashMotionSet = require('./cashMotionSet.js')
let GraspWithForce = require('./GraspWithForce.js')
let recordFromNow = require('./recordFromNow.js')
let RubbingMotion = require('./RubbingMotion.js')

module.exports = {
  checkGrasp: checkGrasp,
  CashMotion: CashMotion,
  SetMotorSteps: SetMotorSteps,
  getRecordedBuffer: getRecordedBuffer,
  stopRecording: stopRecording,
  MotorSteps: MotorSteps,
  DemoGetForceDistribution: DemoGetForceDistribution,
  Classify: Classify,
  SetMotorAngles: SetMotorAngles,
  rubbingWithForce: rubbingWithForce,
  ClassifyOptoforceData: ClassifyOptoforceData,
  MotorAngles: MotorAngles,
  AddTrial: AddTrial,
  cashMotionSet: cashMotionSet,
  GraspWithForce: GraspWithForce,
  recordFromNow: recordFromNow,
  RubbingMotion: RubbingMotion,
};
