function find_python_for_mojo --description "Find and set Python library for Mojo"
    # Get Python library path
    set -l libpath (python3 -c 'import sysconfig; print(sysconfig.get_config_var("LIBDIR"))')

    if test -z "$libpath"
        echo "Error: Could not determine Python library path"
        return 1
    end

    # Find the Python shared library
    set -l pythonlib (ls $libpath 2>/dev/null | grep -E "libpython3.*[0-9]\.so\$" | head -1)

    if test -z "$pythonlib"
        echo "Warning: Could not find Python shared library in $libpath"
        return 1
    end

    # Export the library path for Mojo
    set -gx MOJO_PYTHON_LIBRARY "$libpath/$pythonlib"
    echo "MOJO_PYTHON_LIBRARY set to: $MOJO_PYTHON_LIBRARY"
end

# Automatically run on shell startup
find_python_for_mojo