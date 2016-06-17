.class public final Ldfq;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Ldfq;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Ldfq;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->c(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Lhhv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhhv;->b(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    .line 210
    iget-object v0, p0, Ldfq;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->d(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Ldfq;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->e(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V

    .line 213
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Ldfq;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Ldfq;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Ldfq;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->c(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Lhhv;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ldxa;->a(Landroid/content/Context;Leqw;Ljava/lang/Exception;)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 220
    :cond_0
    return-void
.end method
