#!/bin/bash
# Update 2024-10-10

RED='\033[0;31m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'  
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
NC='\033[0m' 

apt update
clear
echo -e "${MAGENTA} ┌─────────────────────────────────────────────────────┐ ${NC}"
echo -e "${MAGENTA} │${NC}               ${YELLOW}RDP Installer Script${NC}               ${MAGENTA}│ ${NC}"
echo -e "${MAGENTA} ├─────────────────────────────────────────────────────┤ ${NC}"
echo -e "${MAGENTA} │${NC} ${RED}NOTE: Pastikan VPS Anda menggunakan Ubuntu 20.04.${NC}    ${MAGENTA}│ ${NC}"
#echo -e "${MAGENTA} │${NC} ${YELLOW}Jika provider tidak tersedia, hubungi owner untuk${NC}    ${MAGENTA}│ ${NC}"
#echo -e "${MAGENTA} │${NC} ${YELLOW}tester VPS Anda.${NC}                                    ${MAGENTA}│ ${NC}"
#echo -e "${MAGENTA} │${NC} ${YELLOW}beli kunci key untuk akses script chat 088232154376${NC}                                    ${MAGENTA}│ ${NC}"
echo -e "${MAGENTA} ├─────────────────────────────────────────────────────┤ ${NC}"
echo -e "${MAGENTA} │${NC} ${RED}Script tidak dapat dijalankan jika provider yang${NC}     ${MAGENTA}│ ${NC}"
echo -e "${MAGENTA} │${NC} ${RED}dipilih tidak sesuai dengan yang disediakan.${NC}        ${MAGENTA}│ ${NC}"
echo -e "${MAGENTA} └─────────────────────────────────────────────────────┘ ${NC}"

echo -e "${MAGENTA} ┌─────────────────────────────────────────────────────┐ ${NC}"
echo -e "${MAGENTA} │${NC}         ${CYAN}Silakan pilih provider VPS untuk instalasi RDP:${NC} ${MAGENTA}│ ${NC}"
echo -e "${MAGENTA} ├─────────────────────────────────────────────────────┤ ${NC}"
echo -e "${MAGENTA} │${NC} ${CYAN} 1) DigitalOcean${NC}                                     ${MAGENTA}│ ${NC}"
echo -e "${MAGENTA} │${NC} ${CYAN} 2) Vultr${NC}                                            ${MAGENTA}│ ${NC}"
echo -e "${MAGENTA} │${NC} ${CYAN} 3) Vultr Bare Metal${NC}                                            ${MAGENTA}│ ${NC}"
echo -e "${MAGENTA} └─────────────────────────────────────────────────────┘ ${NC}"

read -p "Masukkan pilihan Anda (1-3): " pilihan
echo -e "${MAGENTA} ┌─────────────────────────────────────────────────────┐ ${NC}"

case $pilihan in
    1)
        echo -e "${MAGENTA} │${NC} ${CYAN}Memulai instalasi RDP untuk DigitalOcean...${NC} ${MAGENTA}│ ${NC}"
        wget -q https://www.installrdp.me/install/stdo && chmod +x stdo && ./stdo
        ;;
    2)
        echo -e "${MAGENTA} │${NC} ${CYAN}Memulai instalasi RDP untuk Vultr...${NC}        ${MAGENTA}│ ${NC}"
        wget -q https://www.installrdp.me/install/stvt && chmod +x stvt && ./stvt
        ;;
    3)
        echo -e "${MAGENTA} │${NC} ${CYAN}Memulai instalasi RDP untuk Vultr...${NC}        ${MAGENTA}│ ${NC}"
        wget -q https://www.installrdp.me/install/stvtbr && chmod +x stvtbr && ./stvtbr
        ;;
    *)
        echo -e "${MAGENTA} │${NC} ${RED}Pilihan tidak valid. Harap pilih antara 1 atau 3.${NC} ${MAGENTA}│ ${NC}"
        echo -e "${MAGENTA} └─────────────────────────────────────────────────────┘ ${NC}"
        exit 1
        ;;
esac

echo -e "${MAGENTA} └─────────────────────────────────────────────────────┘ ${NC}"
