input_dir="./input/"
output_dir="./output/"

file_names=("rgb_0000.jpg" "rgb_0001.jpg" "rgb_0002.jpg" "rgb_0003.jpg" "rgb_0004.jpg" "rgb_0005.jpg" "rgb_0006.jpg" "rgb_0007.jpg" "rgb_0008.jpg" "rgb_0013.jpg" "rgb_0014.jpg" "rgb_0017.jpg" "rgb_0020.jpg" "rgb_0024.jpg" "rgb_0025.jpg" "rgb_0028.jpg" "rgb_0029.jpg" "rgb_0033.jpg" "rgb_0034.jpg" "rgb_0038.jpg")

for file_name in "${file_names[@]}"; do
  output_file="$(echo "$file_name" | sed 's/rgb_/ji_estimate_/')"

  ./python/examples/depthnet.py "${input_dir}${file_name}" "${output_dir}${output_file}" --visualize=depth
done
