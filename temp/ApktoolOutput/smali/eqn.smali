.class public final Leqn;
.super Ljava/lang/Object;
.source "ResponseDecoder.java"


# instance fields
.field public a:Z

.field public b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Leqn;->b:Ljava/lang/StringBuilder;

    .line 19
    return-void
.end method
