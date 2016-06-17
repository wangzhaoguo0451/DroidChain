.class public final Lduo;
.super Lhic;
.source "SubscribeOnBoardFragment.java"


# instance fields
.field final synthetic a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lduo;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lduo;-><init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    invoke-virtual {p0}, Lduo;->f()Leri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;->a(Leri;Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 142
    invoke-virtual {p0}, Lduo;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    new-instance v1, Ldup;

    invoke-direct {v1, p0, p1}, Ldup;-><init>(Lduo;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v1}, Leri;->a(Landroid/view/View$OnClickListener;)Leri;

    .line 153
    return-void
.end method
