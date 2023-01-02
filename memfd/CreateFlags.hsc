{-# language CPP #-}

module CreateFlags where

import CreateFlagsType (CreateFlags (..))
import HugeTLBSizeType (HugeTLBSize (..))

import Data.Maybe (Maybe (..))

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
hugeTLBSize :: HugeTLBSize -> Maybe CreateFlags

hugeTLBSize HugeTLB_64KB =
#ifdef MFD_HUGE_64KB
    Just (CreateFlags (#const MFD_HUGE_64KB))
#else
    Nothing
#endif

hugeTLBSize HugeTLB_512KB =
#ifdef MFD_HUGE_512KB
    Just (CreateFlags (#const MFD_HUGE_512KB))
#else
    Nothing
#endif

hugeTLBSize HugeTLB_1MB =
#ifdef MFD_HUGE_1MB
    Just (CreateFlags (#const MFD_HUGE_1MB))
#else
    Nothing
#endif

hugeTLBSize HugeTLB_2MB =
#ifdef MFD_HUGE_2MB
    Just (CreateFlags (#const MFD_HUGE_2MB))
#else
    Nothing
#endif

hugeTLBSize HugeTLB_8MB =
#ifdef MFD_HUGE_8MB
    Just (CreateFlags (#const MFD_HUGE_8MB))
#else
    Nothing
#endif

hugeTLBSize HugeTLB_16MB =
#ifdef MFD_HUGE_16MB
    Just (CreateFlags (#const MFD_HUGE_16MB))
#else
    Nothing
#endif

hugeTLBSize HugeTLB_32MB =
#ifdef MFD_HUGE_32MB
    Just (CreateFlags (#const MFD_HUGE_32MB))
#else
    Nothing
#endif

hugeTLBSize HugeTLB_256MB =
#ifdef MFD_HUGE_256MB
    Just (CreateFlags (#const MFD_HUGE_256MB))
#else
    Nothing
#endif

hugeTLBSize HugeTLB_512MB =
#ifdef MFD_HUGE_512MB
    Just (CreateFlags (#const MFD_HUGE_512MB))
#else
    Nothing
#endif

hugeTLBSize HugeTLB_1GB =
#ifdef MFD_HUGE_1GB
    Just (CreateFlags (#const MFD_HUGE_1GB))
#else
    Nothing
#endif

hugeTLBSize HugeTLB_2GB =
#ifdef MFD_HUGE_2GB
    Just (CreateFlags (#const MFD_HUGE_2GB))
#else
    Nothing
#endif

hugeTLBSize HugeTLB_16GB =
#ifdef MFD_HUGE_16GB
    Just (CreateFlags (#const MFD_HUGE_16GB))
#else
    Nothing
#endif
