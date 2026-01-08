use std::sync::atomic::{AtomicUsize, AtomicU8};
use serde::{Serialize, Deserialize};

pub const WIDTH: usize = 1280;
pub const HEIGHT: usize = 720;
pub const FRAME_SIZE: usize = WIDTH * HEIGHT;
pub const INPUT_BUF_SIZE: usize = 1024;
pub const PATH_BUF_SIZE: usize = 1024;
pub const NET_BUF_SIZE: usize = 1024 * 64;

// --- SYSTEM CALLS (Fractal Edition) ---
#[derive(Debug, Clone, Copy, PartialEq)]
#[repr(C)]
pub enum SystemCall {
    Idle,
    Shutdown,
    SynthesizeState { seed_id: u64 }, // New Kernel Core Logic
}

// --- SHARED MEMORY STRUCTURE (NEURAL LINK) ---
#[repr(C)]
pub struct NeuralLink {
    pub vram: VideoMemory,
    pub sys_call: SystemCall,
    pub sys_call_target: AtomicUsize, // ID of app requested by user
    pub reputation_score: AtomicUsize,
    pub slave_alive: AtomicUsize,
}

#[repr(C)]
pub struct VideoMemory {
    pub buffer: [u32; FRAME_SIZE],
    pub command_counter: AtomicUsize,
}

pub fn setup_shm_file(size: u64) -> std::fs::File {
    std::fs::OpenOptions::new().read(true).write(true).create(true).open("chroma_os_shm.tmp").unwrap()
}
