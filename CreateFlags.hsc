{-# language CPP #-}

module CreateFlags where

import CreateFlagsType (CreateFlags (..))
import HugeTLBSizeType (HugeTLBSize (..))

#include <linux/memfd.h>

-- | Set the close-on-exec (@FD_CLOEXEC@) flag on the new file descriptor
--
-- By default, the new file descriptor is set to remain open across an @execve@ ("execute program") or @fork@ system call and is available to the child process. Use of this flag avoids leaking the file descriptor to child processes.
--
closeOnExec :: CreateFlags
closeOnExec = CreateFlags (#const MFD_CLOEXEC)

-- | Allow sealing operations on this file
--
-- The initial set of seals is empty. If this flag is not set, the initial set of seals will be @F_SEAL_SEAL@, meaning that no other seals can be set on the file.
--
allowSealing :: CreateFlags
allowSealing = CreateFlags (#const MFD_ALLOW_SEALING)

-- | The anonymous file will be created in the hugetlbfs filesystem using huge pages
hugeTLB :: CreateFlags
hugeTLB = CreateFlags (#const MFD_HUGETLB)

-- | Used in conjunction with 'hugeTLB' to select alternative hugeTLB page sizes
hugeTLBSize :: HugeTLBSize -> CreateFlags
hugeTLBSize HugeTLB_64KB  = CreateFlags (#const MFD_HUGE_64KB)
hugeTLBSize HugeTLB_512KB = CreateFlags (#const MFD_HUGE_512KB)
hugeTLBSize HugeTLB_1MB   = CreateFlags (#const MFD_HUGE_1MB)
hugeTLBSize HugeTLB_2MB   = CreateFlags (#const MFD_HUGE_2MB)
hugeTLBSize HugeTLB_8MB   = CreateFlags (#const MFD_HUGE_8MB)
hugeTLBSize HugeTLB_16MB  = CreateFlags (#const MFD_HUGE_16MB)
hugeTLBSize HugeTLB_32MB  = CreateFlags (#const MFD_HUGE_32MB)
hugeTLBSize HugeTLB_256MB = CreateFlags (#const MFD_HUGE_256MB)
hugeTLBSize HugeTLB_512MB = CreateFlags (#const MFD_HUGE_512MB)
hugeTLBSize HugeTLB_1GB   = CreateFlags (#const MFD_HUGE_1GB)
hugeTLBSize HugeTLB_2GB   = CreateFlags (#const MFD_HUGE_2GB)
hugeTLBSize HugeTLB_16GB  = CreateFlags (#const MFD_HUGE_16GB)
