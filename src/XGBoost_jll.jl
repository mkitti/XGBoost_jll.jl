# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule XGBoost_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("XGBoost")
JLLWrappers.@generate_main_file("XGBoost", UUID("a5c6f535-4255-5ca2-a466-0e519f119c46"))
end  # module XGBoost_jll
