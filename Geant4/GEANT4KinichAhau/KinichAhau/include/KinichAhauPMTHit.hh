//
// ********************************************************************
// * License and Disclaimer                                           *
// *                                                                  *
// * The  Geant4 software  is  copyright of the Copyright Holders  of *
// * the Geant4 Collaboration.  It is provided  under  the terms  and *
// * conditions of the Geant4 Software License,  included in the file *
// * LICENSE and available at  http://cern.ch/geant4/license .  These *
// * include a list of copyright holders.                             *
// *                                                                  *
// * Neither the authors of this software system, nor their employing *
// * institutes,nor the agencies providing financial support for this *
// * work  make  any representation or  warranty, express or implied, *
// * regarding  this  software system or assume any liability for its *
// * use.  Please see the license in the file  LICENSE  and URL above *
// * for the full disclaimer and the limitation of liability.         *
// *                                                                  *
// * This  code  implementation is the result of  the  scientific and *
// * technical work of the GEANT4 collaboration.                      *
// * By using,  copying,  modifying or  distributing the software (or *
// * any work based  on the software)  you  agree  to acknowledge its *
// * use  in  resulting  scientific  publications,  and indicate your *
// * acceptance of all terms of the Geant4 Software license.          *
// ********************************************************************
//
// $Id: KinichAhauPMTHit.hh 72250 2013-07-12 08:59:26Z gcosmo $
//
/// \file optical/KinichAhau/include/KinichAhauPMTHit.hh
/// \brief Definition of the KinichAhauPMTHit class
//
//
#ifndef KinichAhauPMTHit_h
#define KinichAhauPMTHit_h 1

#include "G4VHit.hh"
#include "G4THitsCollection.hh"
#include "G4Allocator.hh"

#include "tls.hh"

class G4VTouchable;

class KinichAhauPMTHit : public G4VHit
{
  public:
 
    KinichAhauPMTHit();
    virtual ~KinichAhauPMTHit();
    KinichAhauPMTHit(const KinichAhauPMTHit &right);

    const KinichAhauPMTHit& operator=(const KinichAhauPMTHit &right);
    G4int operator==(const KinichAhauPMTHit &right) const;

    inline void *operator new(size_t);
    inline void operator delete(void *aHit);
 
    virtual void Print();

    inline void IncPhotonCount(){fPhotons++;}
    inline G4int GetPhotonCount(){return fPhotons;}

  private:
    G4int fEventNumber;
    G4int fPhotons;

};

typedef G4THitsCollection<KinichAhauPMTHit> KinichAhauPMTHitsCollection;

extern G4ThreadLocal G4Allocator<KinichAhauPMTHit>* KinichAhauPMTHitAllocator;

inline void* KinichAhauPMTHit::operator new(size_t){
  if(!KinichAhauPMTHitAllocator)
      KinichAhauPMTHitAllocator = new G4Allocator<KinichAhauPMTHit>;
  return (void *) KinichAhauPMTHitAllocator->MallocSingle();
}

inline void KinichAhauPMTHit::operator delete(void *aHit){
  KinichAhauPMTHitAllocator->FreeSingle((KinichAhauPMTHit*) aHit);
}

#endif
