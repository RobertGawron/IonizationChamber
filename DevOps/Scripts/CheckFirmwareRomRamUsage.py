#!/usr/bin/env python3
"""
SDCC Memory Usage Checker for STM8
Usage: check_memory.py <rom_limit> <ram_limit> <map_file>
"""
import sys
import re

def parse_map_file(map_path):
    """Parse SDCC map file and return ROM and RAM usage"""
    rom_usage = 0
    ram_usage = 0
    
    # Define regex patterns for memory sections
    rom_sections = [
        r"^HOME\s+\w+\s+(\w+)",
        r"^GSINIT\s+\w+\s+(\w+)",
        r"^GSFINAL\s+\w+\s+(\w+)",
        r"^CONST\s+\w+\s+(\w+)",
        r"^CODE\s+\w+\s+(\w+)"
    ]
    
    ram_sections = [
        r"^DATA\s+\w+\s+(\w+)",
        r"^SSEG\s+\w+\s+(\w+)"
    ]
    
    try:
        with open(map_path, 'r') as f:
            content = f.read()
            
            # Calculate ROM usage
            for pattern in rom_sections:
                match = re.search(pattern, content, re.MULTILINE)
                if match:
                    hex_value = match.group(1).lstrip('0') or '0'
                    rom_usage += int(hex_value, 16)
            
            # Calculate RAM usage
            for pattern in ram_sections:
                match = re.search(pattern, content, re.MULTILINE)
                if match:
                    hex_value = match.group(1).lstrip('0') or '0'
                    ram_usage += int(hex_value, 16)
            
            return rom_usage, ram_usage
            
    except Exception as e:
        print(f"Error parsing map file: {e}")
        sys.exit(1)

def main():
    if len(sys.argv) != 4:
        print("Usage: check_memory.py <rom_limit> <ram_limit> <map_file>")
        sys.exit(1)
    
    try:
        rom_limit = int(sys.argv[1])
        ram_limit = int(sys.argv[2])
        map_file = sys.argv[3]
        
        rom_usage, ram_usage = parse_map_file(map_file)
        
        print("=" * 60)
        print(f"Memory Usage Report for STM8S003F3P")
        print(f"ROM limit: {rom_limit} bytes")
        print(f"RAM limit: {ram_limit} bytes")
        print("-" * 60)
        print(f"ROM usage: {rom_usage} bytes ({rom_usage/rom_limit:.1%} of limit)")
        print(f"RAM usage: {ram_usage} bytes ({ram_usage/ram_limit:.1%} of limit)")
        print("-" * 60)
        
        if rom_usage > rom_limit:
            print(f"ERROR: ROM usage exceeds limit by {rom_usage - rom_limit} bytes!")
            sys.exit(1)
        
        if ram_usage > ram_limit:
            print(f"ERROR: RAM usage exceeds limit by {ram_usage - ram_limit} bytes!")
            sys.exit(1)
        
        print("Memory usage within device limits")
        print("=" * 60)
        
    except ValueError as e:
        print(f"Invalid argument: {e}")
        sys.exit(1)
    except Exception as e:
        print(f"Error: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()
