
 #!/bin/bash
 git clone https://github.com/comfyanonymous/ComfyUI.git && cd ComfyUI
 
#python -m pip install torch torchvision torchaudio –extra-index-url https://download.pytorch.org/whl/rocm5.4.2 -r requirements.txt

get -c https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt -P ./models/checkpoints/

python3 main.py --cpu --dont-upcast-attention --auto-launch --disable-cuda-malloc --disable-xformers 


