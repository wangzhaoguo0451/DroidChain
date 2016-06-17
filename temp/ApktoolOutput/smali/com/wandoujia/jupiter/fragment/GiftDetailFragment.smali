.class public Lcom/wandoujia/jupiter/fragment/GiftDetailFragment;
.super Lcom/wandoujia/jupiter/fragment/ListFragment;
.source "GiftDetailFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lum;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration;

    invoke-direct {v0}, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration;-><init>()V

    return-object v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f03013f

    return v0
.end method
