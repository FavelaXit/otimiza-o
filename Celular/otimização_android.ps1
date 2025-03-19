#!/bin/bash

echo "🚀 Otimização do Android iniciada!"

# 1️⃣ Limpar cache de aplicativos
echo "🗑 Limpando cache..."
rpm -rf /data/dalvik-cache/*
rpm -rf /data/system/package_cache/*
echo "✅ Cache limpo!"

# 2️⃣ Fechar apps em segundo plano
echo "⚡ Fechando processos desnecessários..."
killall -9 com.facebook.katana
killall -9 com.whatsapp
killall -9 com.instagram.android
echo "✅ Processos finalizados!"

# 3️⃣ Liberar RAM
echo "🚀 Liberando memória RAM..."
sync; echo 3 > /proc/sys/vm/drop_caches
echo "✅ Memória RAM otimizada!"

# 4️⃣ Ajustar CPU para modo de alto desempenho
echo "🔥 Ativando alto desempenho..."
echo "performance" > /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
echo "✅ CPU configurada!"

echo "🔥 Android otimizado com sucesso!"
