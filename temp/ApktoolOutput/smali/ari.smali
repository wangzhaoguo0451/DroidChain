.class public final Lari;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"


# instance fields
.field final a:Lark;

.field private final b:Lakn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakn",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmv;Lart;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p2, Lart;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->a(Z)V

    .line 38
    new-instance v0, Lark;

    invoke-static {}, Larn;->a()Larn;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lark;-><init>(Lmv;Lart;Lmv;)V

    iput-object v0, p0, Lari;->a:Lark;

    .line 42
    new-instance v0, Larj;

    invoke-direct {v0, p0}, Larj;-><init>(Lari;)V

    iput-object v0, p0, Lari;->b:Lakn;

    .line 48
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lakk;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lakk",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lari;->a:Lark;

    invoke-virtual {v0, p1}, Lark;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lari;->b:Lakn;

    invoke-static {v0, v1}, Lakk;->a(Ljava/lang/Object;Lakn;)Lakk;

    move-result-object v0

    return-object v0
.end method
