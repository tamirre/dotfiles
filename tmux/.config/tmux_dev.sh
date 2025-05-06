#!/bin/bash

SESSION_NAME="dev"
BASE_DIR="/u/tamir/lmt/src/"

if [ -n "$1" ]; then
    WORK_DIR="$BASE_DIR/$1"
else
    WORK_DIR="$BASE_DIR"
fi

if tmux has-session -t "$SESSION_NAME" 2>/dev/null;then
    echo "Attaching to existing tmux session: $SESSION_NAME"
else
    echo "Creating new tmux session: $SESSION_NAME"
    tmux new-session -d -s "$SESSION_NAME" -c "$WORK_DIR"
    tmux send-keys -t "$SESSION_NAME" "nvim" C-m
    tmux split-window -v -p 2 -t "$SESSION_NAME":1 -c "$WORK_DIR"
    tmux select-pane -t "$SESSION_NAME":1.0
    # tmux new-window -t "$SESSION_NAME":2 -c "$WORK_DIR"
    tmux set-option -g status-right '#{b:pane_current_path}'
fi
tmux source-file ~/.tmux.conf
tmux attach-session -t "$SESSION_NAME"
tmux select-window -t "$SESSION_NAME":1
tmux refresh-client -S
