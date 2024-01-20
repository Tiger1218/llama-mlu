# Cambricon PyTorch Model Migration Report
## Cambricon PyTorch Changes
| No. |  File  |  Description  |
| 1 | generation.py:11 | add "import torch_mlu" |
| 2 | generation.py:85 | change "torch.distributed.init_process_group("nccl")" to "torch.distributed.init_process_group("cncl") " |
| 3 | generation.py:92 | change "torch.cuda.set_device(local_rank)" to "torch.mlu.set_device(local_rank) " |
| 4 | generation.py:118 | change "torch.set_default_tensor_type(torch.cuda.HalfTensor)" to "torch.set_default_tensor_type(torch.mlu.HalfTensor) " |
| 5 | generation.py:168 | change "tokens = torch.full((bsz, total_len), pad_id, dtype=torch.long, device="cuda")" to "tokens = torch.full((bsz, total_len), pad_id, dtype=torch.long, device="mlu") " |
| 6 | generation.py:170 | change "tokens[k, : len(t)] = torch.tensor(t, dtype=torch.long, device="cuda")" to "tokens[k, : len(t)] = torch.tensor(t, dtype=torch.long, device="mlu") " |
| 7 | generation.py:175 | change "eos_reached = torch.tensor([False] * bsz, device="cuda")" to "eos_reached = torch.tensor([False] * bsz, device="mlu") " |
| 8 | model.py:9 | add "import torch_mlu" |
| 9 | model.py:243 | change ").cuda()" to ").mlu() " |
| 10 | model.py:251 | change ").cuda()" to ").mlu() " |
