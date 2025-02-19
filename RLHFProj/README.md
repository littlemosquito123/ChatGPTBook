本项目为书籍《ChatGPT原理与实战：大型语言模型的算法、技术和私有化》中第9章《类ChatGPT实战》实战部分代码-基于文档生成问题任务的类ChatGPT实战。

## 项目简介

ChatGPT实战主要设计三个阶段：

- [SFT阶段](/RLHFProj/SFT/README.md)：收集提示-答案数据对，训练一个监督学习模型，用于生成答案。
- [RM阶段](/RLHFProj/RewardRank/README.md)：标注人员对模型生成结果进行排序，训练一个奖励模型，用于判断生成答案的价值。
- [RL阶段](/RLHFProj/PPO/README.md)：对提示数据生成答案，根据奖励模型采用强化学习方法更新SFT阶段的监督学习模型。

注意：RLHF的核心在于RM模型的质量，本项目中训练RM模型数据基于规则构造，是为了减轻人工标注，因此无法真正保证数据质量。
## 环境配置

模型训练或推理所需环境，请参考requirements.txt文件。

## 总结

本项目中的代码包含大量的注释信息，帮助读者更容易的阅读代码、以及了解其原理。读者跑通代码的后，可以根据自己特定的任务，定向修改配置参数或代码，实现自己响应的功能。