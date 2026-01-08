use sha2::{Sha256, Digest};

pub struct ChromaChain {
    pub balance: i32, // Reputation Score
}

impl ChromaChain {
    pub fn new() -> Self {
        ChromaChain { balance: 100 } // Start with 100 credits
    }

    // จำลองการขุดและตรวจสอบ Pattern
    pub fn validate_pattern(&mut self, _pattern_hash: &str) {
        // Logic การโหวต Consensus อยู่ตรงนี้
        // ถ้าโหวตถูก ได้รางวัล
        self.balance += 10;
    }
}
