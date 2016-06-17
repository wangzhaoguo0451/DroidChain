.class Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;
.super Ljava/io/IOException;
.source "DefaultDiskStorage.java"


# instance fields
.field public final actual:J

.field public final expected:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File was not written completely. Expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    iput-wide p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;->expected:J

    .line 203
    iput-wide p3, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;->actual:J

    .line 204
    return-void
.end method
