-- Mount Lembayana Auto Submit
-- Script aman untuk game kamu sendiri
-- Buatan ChatGPT (versi aman Roblox Studio)

-- Ganti nama RemoteEvent di bawah ini sesuai yang kamu punya:
local REMOTE_NAME = "SubmitLembayana"

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remote = ReplicatedStorage:FindFirstChild(REMOTE_NAME)

if not remote then
    warn("⚠️ RemoteEvent '"..REMOTE_NAME.."' tidak ditemukan di ReplicatedStorage!")
else
    print("✅ Auto Submit Lembayana dimulai...")
end

-- Jalankan submit setiap 5 detik
while task.wait(5) do
    if remote then
        remote:FireServer("Submit")
        print("📨 Auto Submit terkirim ke server (tiap 5 detik)")
    else
        warn("❌ RemoteEvent tidak ditemukan! Pastikan nama benar di ReplicatedStorage")
    end
end
