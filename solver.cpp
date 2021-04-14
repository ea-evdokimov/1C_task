//
// Created by egor on 4/14/21.
//
#include "solver.hpp"

Solver::Solver(DeckState &state) : cur_state_(std::move(state)) {
    Answer();
}

bool Solver::Solve() {
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

void Solver::Answer() {
    if (Solve()) {
        std::cout << "YES!\n";
    } else {
        std::cout << "NO!\n";
    }
}
