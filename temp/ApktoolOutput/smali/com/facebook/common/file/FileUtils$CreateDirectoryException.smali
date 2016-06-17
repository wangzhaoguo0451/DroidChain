.class public Lcom/facebook/common/file/FileUtils$CreateDirectoryException;
.super Ljava/io/IOException;
.source "FileUtils.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/facebook/common/file/FileUtils$CreateDirectoryException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 92
    return-void
.end method
