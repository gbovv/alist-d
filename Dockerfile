FROM ubuntu:22.04

# Set up a new user named "user" with user ID 1000
RUN useradd -m -u 1000 user

# Switch to the "user" user
USER user

# Set home to the user's home directory
ENV HOME=/home/user \
	PATH=/home/user/.local/bin:$PATH

# Set the working directory to the user's home directory
WORKDIR $HOME/alist

COPY --chown=user . $HOME/alist

RUN chmod +x $HOME/alist/alist
# CMD ["bash", "alist", "server"]
CMD cd $HOME/alist && ./alist server
EXPOSE 5244