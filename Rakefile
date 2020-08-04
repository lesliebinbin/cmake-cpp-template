# frozen_string_literal: true

def conan(profile)
  puts 'conan started..'
  puts "building for #{profile}"
  puts `ln -sf CMakeLists-#{profile}.txt CMakeLists.txt`
  puts `conan install --install-folder=build --build=missing --profile=#{profile}  .`
  puts 'conan completed...'
end

def cmake
  puts 'cmake started..'
  puts `cmake -B build -D CMAKE_EXPORT_COMPILE_COMMANDS=YES -G Ninja .`
  puts `ln -sf build/compile_commands.json`
  puts `cmake --build build`
  puts 'cmake completed..'
end

def reset
  puts 'reset started...'
  puts `rm -rf CMakeLists.txt build compile_commands.json`
  puts `mkdir build`
  puts 'reset completed...'
end

task default: ['gnu:cmake']

task :reset do
  reset
end

namespace :rpi do
  task conan: [:reset] do
    conan(:rpi)
  end
  task cmake: [:conan] do
    cmake
  end
end

namespace :clang do
  task conan: [:reset] do
    conan(:clang)
  end
  task cmake: [:conan] do
    cmake
  end
end

namespace :gnu do
  task conan: [:reset] do
    conan(:gnu)
  end
  task cmake: [:conan] do
    cmake
  end
end
