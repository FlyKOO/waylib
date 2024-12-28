# 使用 Arch Linux 最新版本的基础镜像
FROM archlinux:latest

# 设置工作目录
WORKDIR /workspace

# 更新镜像并安装必要的软件包
RUN pacman-key --init && \
    pacman --noconfirm --noprogressbar -Syu && \
    pacman -Syu --noconfirm --noprogressbar base-devel qt6-base qt6-declarative cmake pkgconfig pixman wlroots wayland-protocols wlr-protocols git clang ninja make fakeroot meson sudo

# 暴露入口命令（默认shell）
CMD ["/bin/bash"]
