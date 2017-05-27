cmake_minimum_required (VERSION 2.8.11)
project (boost_program_options)

# Configuration
message("${PROJECT_NAME}:")
if(NOT IS_DIRECTORY config_third_party_dir)
  get_filename_component(var_third_party_dir "${PROJECT_SOURCE_DIR}/../../../../" ABSOLUTE)
  set(config_third_party_dir ${var_third_party_dir})
  message(" - Third-Party Directory: ${config_third_party_dir}")
endif(NOT IS_DIRECTORY config_third_party_dir)

if(NOT IS_DIRECTORY config_stage_dir)
  get_filename_component(var_stage_dir "${PROJECT_SOURCE_DIR}/stage" ABSOLUTE)
  set(config_stage_dir ${var_stage_dir})
  message(" - Stage Directory: ${config_stage_dir}")
endif(NOT IS_DIRECTORY config_stage_dir)

# string(TOLOWER "${PROJECT_SOURCE_DIR}/stage/${CMAKE_PROJECT_NAME}/${CMAKE_VS_PLATFORM_TOOLSET}" var_bin_output_dir)
set(var_bin_output_dir "${config_stage_dir}/${CMAKE_PROJECT_NAME}/${CMAKE_SYSTEM}")
message(" - Bin Output Directory: ${var_bin_output_dir}")

file(GLOB var_source_files
  ${config_third_party_dir}/boost/libs/program_options/src/*.h
  ${config_third_party_dir}/boost/libs/program_options/src/*.cpp
  )
message("- Source Files: ${var_source_files}")

include_directories(
  ${config_third_party_dir}/boost
  )

add_definitions(-DBOOST_THREAD_PROVIDES_INTERRUPTIONS)

add_library(${PROJECT_NAME} ${var_source_files})
# set_target_properties(${PROJECT_NAME}
set_target_properties(${PROJECT_NAME}
  PROPERTIES 
  LIBRARY_OUTPUT_DIRECTORY ${var_bin_output_dir}
  ARCHIVE_OUTPUT_DIRECTORY ${var_bin_output_dir}
  RUNTIME_OUTPUT_DIRECTORY ${var_bin_output_dir}
  OUTPUT_NAME ${PROJECT_NAME}
  )

