#include "Charlie2D.h"
#include <iostream>

#include "config.h"
#include "components.h"
#include "creaters.h"

/*
 * Some useful code snips
 *
 * LDTK::loadJson("res/ldtk.ldtk");
 * LDTK::onLoadLevel = [](auto entities) {
 *   for (Entity *entity : entities) {
 *     if (entity->tag == "Player")
 *      std::cout << "Player\n";
 *   }
 * };
 * LDTK::loadLevel("65ba8250-25d0-11ef-b0ef-03acbc99fa7b");
*/

int main() {
  GameManager::init();


  GameManager::doUpdateLoop();
  return 0;
}
