# Alkali autosplitter

LiveSpit autosplitter for Alkali.

- The timer mirrors the in-game file timer.
- Starts by selecting a save file (the timer only counts up while in a level).
- Resets when entering save select.

# Data

```cpp
struct AutosplitterStats {
	uint64_t refNum = 7781337512964834278;
	uint64_t inSaveSelect;
	uint64_t fileTimer;
	uint64_t levelTimer;
	uint64_t levelID;
	uint64_t levelCompleted;
	uint64_t numDiskettes;
};
```
