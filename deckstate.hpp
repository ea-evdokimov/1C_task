//
// Created by egor on 4/14/21.
//
#include "const.hpp"
#ifndef INC_1C_TASK_DECKSTATE_HPP
#define INC_1C_TASK_DECKSTATE_HPP

class DeckState {
    std::vector<std::vector<int>> deck_;
public:
    DeckState() {
        deck_.resize(DECK_SIZE);
        for (int i = 0; i < DECK_SIZE; ++i) {
            deck_[i].resize(COL_SIZE);
        }
        std::cout << "Input your deck! 8 strings by 9 cards, card on the top will be the last\n";
        for (int i = 0; i < DECK_SIZE; ++i) {
            for (int j = 0; j < COL_SIZE; ++j) {
                std::cin >> deck_[i][j];
            }
        }
        std::cout << "Thanks!\n";
    }

    //текущий размер колоды
    int Size() {
        int res = 0;
        for (int i = 0; i < DECK_SIZE; ++i) {
            res += deck_[i].size();
        }
        assert(res <= DECK_SIZE * COL_SIZE);
        return res;
    }

    //проверка на то, можно ли убрать COL_SIZE последовательных карт
    //рекурсивно запускается
    void CheckClean() {
        int top = MIN_CARD;
        for (int i = 0; i < DECK_SIZE; ++i) {
            for (int j = deck_[i].size() - 1; j >= 0; --j) {
                if (deck_[i][j] != top) {
                    break;
                } else {
                    if (top == MIN_CARD) {
                        Clean(i);
                        if (Size() > 0) {
                            CheckClean();
                        }
                        return;
                    } else {
                        ++top;
                        continue;
                    }
                }
            }
        }
    }

    //проверка на то, можно ли положить минимальную карту
    std::pair<int, int> FindMinStep() {
        int cur_min = MAX_CARD + 1;
        //количество минимальных карт
        int num_mins = 0;
        //показывает, из какой колоды в какую перекладываем
        std::pair<int, int> step = {-1, -1};

        for (int i = 0; i < DECK_SIZE; ++i) {
            assert(deck_[i].size() >= 1);
            if (deck_[i][deck_[i].size() - 1] < cur_min) {
                cur_min = deck_[i][deck_[i].size() - 1];
                step.first = i;
            }
        }

        //подсчет количества минимальных карт
        for (int i = 0; i < DECK_SIZE; ++i) {
            assert(deck_[i].size() >= 1);
            if (deck_[i][deck_[i].size() - 1] == cur_min) {
                ++num_mins;
            }
        }

        for (int i = 0; i < DECK_SIZE; ++i) {
            assert(deck_[i].size() >= 1);
            if (deck_[i][deck_[i].size() - 1] == cur_min + 1) {
                step.second = i;
            }
        }

        if (step.second == -1) {
            if (EmptyColumn() == -1) {
                //мы просто не можем сделать ход
                return step;
            } else {
                //скорее всего мы в состоянии, когда есть колонка, с которой ничег не сделать, попробуем ее разложить
                return ExpandColumn();
            }
        }

        if (num_mins > 1) {
            std::cout << "Now it is too hard to solve :(\n";
            //если минимумов несколько, происходит ветвление, в будущем нужно сделать хэширование состояния, тогда
            //будет настоящий dfs с проработкой всех состояний и ответом получше
            return {-1, -1};
        }

        return step;
    }
    void MakeStep(int from, int to) {
        deck_[to].push_back(deck_[from][deck_[from].size() - 1]);
        deck_[from].pop_back();
    }

private:
    int EmptyColumn() {
        for (int i = 0; i < DECK_SIZE; ++i) {
            if (deck_[i].size() == 0)
                return i;
        }
        return -1;
    }

    std::pair<int, int> ExpandColumn() {
        //to be implemented
    }

    //убирается 9 последовательных карт из опр колонки
    void Clean(int column) {
        assert(deck_[column].size() >= COL_SIZE);
        deck_[column].resize(deck_[column].size() - COL_SIZE);
    }
};

#endif //INC_1C_TASK_DECKSTATE_HPP

