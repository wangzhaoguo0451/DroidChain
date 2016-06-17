.class public Lcom/wandoujia/jupiter/fragment/NuxHomeFragment;
.super Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;
.source "NuxHomeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Ldcb;

    invoke-static {}, Ld;->p()Leqx;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ldcb;-><init>(Ljava/lang/String;Leqx;)V

    return-object v0
.end method
