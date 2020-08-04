# frozen_string_literal: true

task default: ['gnu:cmake']
task :reset do
  puts 'reset started...'
  puts `rm -rf CMakeLists.txt build compile_commands.json`
  puts `mkdir build`
  puts 'reset completed...'
end

namespace :rpi do
  task conan: [:reset] do
    puts 'conan started..'
    puts 'building for raspberry pi'
    puts `ln -sf CMakeLists-rpi.txt CMakeLists.txt`
    puts `conan install --install-folder=build --build=missing --profile=rpi .`
    puts 'conan completed...'
  end
  task cmake: [:conan] do
    puts 'cmake started..'
    puts `cmake -B build -D CMAKE_EXPORT_COMPILE_COMMANDS=YES .`
    puts `ln build/compile_commands.json`
    puts 'cmake stopeped..'
  end
end

namespace :clang do
  task conan: [:reset] do
    puts 'conan started..'
    puts 'building using clang'
    puts `ln -sf CMakeLists-clang.txt CMakeLists.txt`
    puts `conan install --install-folder=build --build=missing --profile=clang .`
    puts 'conan completed...'
  end
  task cmake: [:conan] do
    puts 'cmake started..'
    puts `cmake -B build -D CMAKE_EXPORT_COMPILE_COMMANDS=YES .`
    puts `ln build/compile_commands.json`
    puts 'cmake stopeped..'
  end
end

namespace :gnu do
  task conan: [:reset] do
    puts 'building default gnu'
    puts 'conan started..'
    puts `ln -sf CMakeLists-gnu.txt CMakeLists.txt`
    puts `conan install --install-folder=build --build=missing --profile=default .`
    puts 'conan completed...'
  end
  task cmake: [:conan] do
    puts 'cmake started..'
    puts `cmake -B build -D CMAKE_EXPORT_COMPILE_COMMANDS=YES .`
    puts `ln build/compile_commands.json`
    puts 'cmake stopeped..'
  end
end
