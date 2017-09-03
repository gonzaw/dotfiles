#!/bin/bash

function open() {
  $1 >/dev/null 2>&1 &
}
