#!/bin/bash

pecl install redis

brew services restart php

echo 'XX -- PHP Extensions done.'