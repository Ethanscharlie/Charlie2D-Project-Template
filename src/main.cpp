#include "Charlie2D.h"
#include <iostream>

#include "config.h"
#include "components.h"
#include "creaters.h"

int main() {
  GameManager::init();


  GameManager::doUpdateLoop();
  return 0;
}
