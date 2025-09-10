# ⚡ PowerKeeper - Monitoramento e Simulação de Consumo Elétrico

O **PowerKeeper** é um sistema desenvolvido em **Dart** para **monitorar, simular e registrar o consumo elétrico** em tempo real.  
Ele calcula potência, consumo acumulado e gasto estimado com base em medições simuladas e salva **todo o histórico** automaticamente em um arquivo `.csv`.

---

## 📌 **Funcionalidades**

✅ Simula **amperagem** a cada 3 segundos  
✅ Calcula **potência instantânea (W)**  
✅ Calcula **consumo acumulado (Wh)**  
✅ Calcula **gasto estimado (R$)** baseado na tarifa configurada  
✅ Exibe os **últimos 10 registros** no terminal  
✅ Salva **todo o histórico** de consumo em um arquivo `.csv`  
✅ Interface **limpa e atualizada em tempo real**

---

## 🛠️ **Tecnologias Utilizadas**

- **Linguagem:** [Dart](https://dart.dev)
- **Bibliotecas nativas:**
  - `dart:math` → gera valores aleatórios de amperagem
  - `dart:async` → executa atualizações periódicas com `Timer`
  - `dart:io` → manipula arquivos `.csv` e atualiza o terminal

---

## 🚀 **Como Executar o Projeto**

### **1. Instale o Dart**
Baixe e instale o Dart:  
🔗 [https://dart.dev/get-dart](https://dart.dev/get-dart)

Verifique a instalação:
```bash
dart --version
