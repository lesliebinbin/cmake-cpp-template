task :default [:gnu:cmake]
task :reset  do
  puts 'reset started...'
  `rm -rf CMakeLists.txt build compile_commands.json`
  `mkdir build`
  puts 'reset completed...'
end

namespace :rpi do
  task conan: [:reset] do
    puts 'conan started..'
    puts "building for raspberry pi"
    `ln -sf CMakeLists-rpi.txt CMakeLists.txt`
    `conan install --install-folder=build --build=missing --profile=rpi .`
    puts 'conan completed...'
  end
  task cmake: [:conan] do
    puts 'cmake started..'
    `cmake -B build -D CMAKE_EXPORT_COMPILE_COMMANDS=YES .`
    `ln build/compile_commands.json`
    puts 'cmake stopeped..'
  end
end

namespace :clang do
  task conan: [:reset] do
    puts 'conan started..'
    puts "building using clang"
    `ln -sf CMakeLists-clang.txt CMakeLists.txt`
    `conan install --install-folder=build --build=missing --profile=clang .`
    puts 'conan completed...'
  end
  task cmake: [:conan] do
    puts 'cmake started..'
    `cmake -B build -D CMAKE_EXPORT_COMPILE_COMMANDS=YES .`
    `ln build/compile_commands.json`
    puts 'cmake stopeped..'
  end
end

namespace :gnu do
  task conan: [:reset] do
    puts "building default gnu"
    puts 'conan started..'
    `ln -sf CMakeLists-gnu.txt CMakeLists.txt`
    `conan install --install-folder=build --build=missing --profile=default .`
    puts 'conan completed...'
  end
  task cmake: [:conan] do
    puts 'cmake started..'
    `cmake -B build -D CMAKE_EXPORT_COMPILE_COMMANDS=YES .`
    `ln build/compile_commands.json`
    puts 'cmake stopeped..'
  end
end
