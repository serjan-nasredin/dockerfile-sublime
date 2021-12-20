# SYNTAX TEST "Dockerfile.sublime-syntax"
RUN apt-get update \
	&& apt-get install -y --no-install-recommends ffmpeg \
     # ^^^^ keyword.operator.word.Dockerfile
	&& apt-get clean \
  # <- constant.Dockerfile
	&& rm -rf /var/lib/apt/lists/*
    # ^^^ keyword.operator.word.Dockerfile
COPY . /app
WORKDIR /app
# ^^^^ keyword.control.Dockerfile

RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
                 # ^^^^^^^^^^^ variable.Dockerfile
 # <- keyword.control.Dockerfile
CMD ["python3", "main.py"]
     # ^^^^^^ string.quoted.double.Dockerfile
