#!/bin/bash

# 自动检测系统架构
ARCH=$(uname -m)
case $ARCH in
    x86_64|amd64)
        ARCH_TYPE="amd64"
        ;;
    aarch64|arm64)
        ARCH_TYPE="arm64"
        ;;
    *)
        echo "不支持的架构: $ARCH"
        exit 1
        ;;
esac

echo "检测到系统架构: $ARCH ($ARCH_TYPE)"
