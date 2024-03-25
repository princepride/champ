#!/bin/bash

# 设置项目URL和模型文件列表
project_url="https://huggingface.co/camenduru/champ/resolve/main"
model_files=(
  "champ/denoising_unet.pth"
  "champ/guidance_encoder_depth.pth"
  "champ/guidance_encoder_dwpose.pth"
  "champ/guidance_encoder_normal.pth"
  "champ/guidance_encoder_semantic_map.pth"
  "champ/reference_unet.pth"
  "champ/motion_module.pth"
  "image_encoder/config.json"
  "image_encoder/pytorch_model.bin"
  "sd-vae-ft-mse/config.json"
  "sd-vae-ft-mse/diffusion_pytorch_model.bin"
  "sd-vae-ft-mse/diffusion_pytorch_model.safetensors"
  "stable-diffusion-v1-5/feature_extractor/preprocessor_config.json"
  "stable-diffusion-v1-5/model_index.json"
  "stable-diffusion-v1-5/unet/config.json"
  "stable-diffusion-v1-5/unet/diffusion_pytorch_model.bin"
  "stable-diffusion-v1-5/v1-inference.yaml"
)

# 创建pretrained_models文件夹
mkdir -p pretrained_models

# 遍历模型文件列表并下载
for file in "${model_files[@]}"
do
  # 创建子文件夹（如果不存在）
  dir_name=$(dirname "$file")
  mkdir -p "pretrained_models/$dir_name"
  
  # 下载模型文件
  wget -O "pretrained_models/$file" "$project_url/$file"
done

echo "Model files downloaded successfully."
