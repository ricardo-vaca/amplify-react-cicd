#!/bin/bash

env | grep '^REACT_' > .env
npx react-scripts build