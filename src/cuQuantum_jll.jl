# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule cuQuantum_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("cuQuantum")
JLLWrappers.@generate_main_file("cuQuantum", UUID("b75408ef-6fdf-5d74-b65a-7df000ad18e6"))
end  # module cuQuantum_jll
