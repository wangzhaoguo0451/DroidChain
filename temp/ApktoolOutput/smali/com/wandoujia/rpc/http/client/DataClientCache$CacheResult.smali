.class public Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;
.super Ljava/lang/Object;
.source "DataClientCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final isTimeout:Z

.field public final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JZ)V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;->data:Ljava/lang/Object;

    .line 199
    iput-wide p2, p0, Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;->timestamp:J

    .line 200
    iput-boolean p4, p0, Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;->isTimeout:Z

    .line 201
    return-void
.end method
