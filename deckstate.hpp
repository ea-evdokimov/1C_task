//
// Created by egor on 4/14/21.
//
#include "const.hpp"

#ifndef INC_1C_TASK_DECKSTATE_HPP
#define INC_1C_TASK_DECKSTATE_HPP

class DeckState {
    std::vector<std::vector<int>> deck_;
public:
    DeckState();

    //текущий размер колоды
    int Size();

    //проверка на то, можно ли убрать COL_SIZE последовательных карт
    //рекурсивно запускается
    void CheckClean();

    //проверка на то, можно ли положить минимальную карту
    std::pair<int, int> FindMinStep();

    void MakeStep(int from, int to);

private:
    int EmptyColumn();

    std::pair<int, int> ExpandColumn();

    //убирается 9 последовательных карт из опр колонки
    void Clean(int column);
};

#endif //INC_1C_TASK_DECKSTATE_HPP

