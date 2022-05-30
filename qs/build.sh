dotnet new classlib -lang Q# -o quantum
dotnet new console -lang C# -o host  
cd host
dotnet add reference ../quantum/quantum.csproj
cd ..
dotnet new sln -n quantum-dotnet
dotnet sln quantum-dotnet.sln add ./quantum/quantum.csproj
dotnet sln quantum-dotnet.sln add ./host/host.csproj