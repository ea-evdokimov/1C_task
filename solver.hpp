//
// Created by egor on 4/14/21.
//
#include "deckstate.hpp"

#ifndef INC_1C_TASK_SOLVER_HPP
#define INC_1C_TASK_SOLVER_HPP

class Solver {
    DeckState cur_state_;
    std::stack<DeckState> stack_;
public:
    Solver(DeckState &state) : cur_state_(std::move(state)) {
        Answer();
    }

private:
    bool Solve() {
        while (cur_state_.Size() > 0) {
            cur_state_.CheckClean();
            if (cur_state_.Size() == 0) {
                break;
            }
            std::pair<int, int> step = cur_state_.FindMinStep();

            //то есть если нет возможности походить
            if (step.second == -1) {
                return false;
            }

            cur_state_.MakeStep(step.first, step.second);
        }

        if (cur_state_.Size() == 0)
            return true;
        else
            return false;
    }

    void Answer() {
        if (Solve()) {
            std::cout << "YES!\n";
        } else {
            std::cout << "NO!\n";
        }
    }
};

#endif //INC_1C_TASK_SOLVER_HPP
