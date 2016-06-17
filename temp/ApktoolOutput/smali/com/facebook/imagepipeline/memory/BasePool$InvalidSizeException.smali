.class public Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;
.super Ljava/lang/RuntimeException;
.source "BasePool.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 784
    return-void
.end method
