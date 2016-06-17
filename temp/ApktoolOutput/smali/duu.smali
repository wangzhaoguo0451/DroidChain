.class public final Lduu;
.super Lhic;
.source "SubscribeTimeLineFragment.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lduu;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0}, Lduu;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    .line 161
    return-void
.end method
