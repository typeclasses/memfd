"memfd" (**mem**ory **f**ile **d**escriptor) memfd lets us open memory-only
files that are not linked into a directory and are not backed by persistent
storage.
Such a file is described as an "anonymous file".
It behaves like a regular file, and so can be modified, truncated,
memory-mapped, and so on.
However, unlike a regular file, it lives in RAM and has a volatile backing storage.
Once all references to the file are dropped, it is automatically released.

This feature is only available on Linux.

The recommended way to import this library is:

```haskell
import qualified Memfd
```

There is one central function:

```haskell
create :: CreateOptions -> IO Fd
```

[Fd](https://hackage.haskell.org/package/base/docs/System-Posix-Types.html#t:Fd)
stands for "file descriptor". Here are some things you can do with a file descriptor:

- [Set the file size](https://hackage.haskell.org/package/unix/docs/System-Posix-Files.html#v:setFdSize)
- [Map the file](https://hackage.haskell.org/package/shared-memory/docs/MMAP.html#v:mmap)
  into your process's memory space
- [Send the file descriptor](https://hackage.haskell.org/package/network/docs/Network-Socket.html#v:sendFd)
  over a Unix-domain socket to share the memory with another process
- [Close the file](https://hackage.haskell.org/package/unix/docs/System-Posix-IO.html#v:closeFd)
  and allow its contents to get garbage collected by the operating system
