.class public Lcom/facebook/common/references/SharedReference$NullReferenceException;
.super Ljava/lang/RuntimeException;
.source "SharedReference.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 252
    const-string v0, "Null shared reference"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 253
    return-void
.end method
