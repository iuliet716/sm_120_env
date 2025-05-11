import torch

print("PyTorch Version:", torch.__version__)
print("PyTorch CUDA Version:", torch.version.cuda)
print("Supported Architectures:", torch.cuda.get_arch_list())

print()

# CPU TEST
print("[CPU TEST]")
x = torch.rand(3, 3)
print("Random Tensor x:\n", x)
print("x + x =\n", x + x)

print()

# GPU TEST
print("[GPU TEST]")
if torch.cuda.is_available():
    print("CUDA is available (GPU):", torch.cuda.get_device_name(0))
    print("Allocation on GPU succeeded:\n", x)
    print("Computation on GPU succeeded:\n", x + x)
else:
    print("CUDA is not available")
