.class public final Ldkq;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/onboard/SplashFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/onboard/SplashFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Ldkq;->a:Lcom/wandoujia/jupiter/onboard/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Ldkq;->a:Lcom/wandoujia/jupiter/onboard/SplashFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->a(Lcom/wandoujia/jupiter/onboard/SplashFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0, p0}, Leqw;->b(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    .line 102
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Ldkq;->a:Lcom/wandoujia/jupiter/onboard/SplashFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Ldkq;->a:Lcom/wandoujia/jupiter/onboard/SplashFragment;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Ldkq;->a:Lcom/wandoujia/jupiter/onboard/SplashFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/onboard/SplashFragment;->a(Lcom/wandoujia/jupiter/onboard/SplashFragment;)Leqw;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ldxa;->a(Landroid/content/Context;Leqw;Ljava/lang/Exception;)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 109
    :cond_0
    return-void
.end method
