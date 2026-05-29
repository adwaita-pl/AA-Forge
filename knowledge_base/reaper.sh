#!/bin/bash
# The Reaper Job: Harvests, validates, and merges local decentralized logs.

KNOWLEDGE_BASE="/home/blablabla/god/AA-Forge/knowledge_base"
CENTRAL_LOG="$KNOWLEDGE_BASE/central_archive.jsonl"

for agent_dir in /home/blablabla/god/AA-Forge/agents/*; do
  if [ -d "$agent_dir" ]; then
    local_log="$agent_dir/local_knowledge.jsonl"
    
    if [ -f "$local_log" ]; then
      # Process each new knowledge delta
      while IFS= read -r line; do
        # True JSON validation using jq to ensure required schema keys are present
        if echo "$line" | jq -e 'has("agent") and has("timestamp") and has("knowledge_delta")' > /dev/null 2>&1; then
          # Append to Central Archive
          echo "$line" >> "$CENTRAL_LOG"
        else
          echo "Validation Error: Rejected malformed delta from $agent_dir" >&2
        fi
      done < "$local_log"
      
      # Clear the local log after reaping to prevent duplicate harvesting
      > "$local_log"
    fi
  fi
done
