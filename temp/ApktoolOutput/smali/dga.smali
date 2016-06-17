.class public final Ldga;
.super Lup;
.source "HomeScrollFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Ldga;->a:Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;

    invoke-direct {p0}, Lup;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Ldga;->a:Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->a(Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;)Ldfm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Ldga;->a:Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->a(Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;)Ldfm;

    move-result-object v0

    invoke-interface {v0, p2}, Ldfm;->a(I)V

    .line 40
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Ldga;->a:Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;

    iget-object v1, p0, Ldga;->a:Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->b(Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->a(Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;I)I

    .line 45
    iget-object v0, p0, Ldga;->a:Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->a(Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;)Ldfm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Ldga;->a:Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;->a(Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;)Ldfm;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ldfm;->a(II)V

    .line 48
    :cond_0
    return-void
.end method
