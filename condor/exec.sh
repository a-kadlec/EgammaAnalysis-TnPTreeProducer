#!/bin/bash
export SCRAM_ARCH=el9_amd64_gcc12
cd /afs/cern.ch/user/r/rselvati/work/private/Tag_and_Probe/tree_producer/lxplus9/CMSSW_13_3_0/src/ 
eval `scramv1 runtime -sh`
echo $PWD	

cd /afs/cern.ch/user/r/rselvati/work/private/Tag_and_Probe/tree_producer/lxplus9/CMSSW_13_3_0/src/EgammaAnalysis/TnPTreeProducer/python

A='doEleID=True'
B='doPhoID=True'
C='doTrigger=True'
D='isMC=False'
E='era=2022'
F='LUMIJSON=/afs/cern.ch/user/r/rselvati/work/private/Tag_and_Probe/tree_producer/lxplus9/CMSSW_13_3_0/src/EgammaAnalysis/TnPTreeProducer/condor/Cert_Collisions2022_355100_362760_Golden.json'
G='INPUTDATASET=root://cms-xrd-global.cern.ch//store/data/Run2022F/EGamma/MINIAOD/PromptReco-v1/000/360/393/00000/70a1c59a-50a8-4cab-bfa8-5e58d1b9953d.root'
H='maxEvents=-1'

cmsRun TnPTreeProducer_cfg.py $A $B $C $D $E $F $G $H
