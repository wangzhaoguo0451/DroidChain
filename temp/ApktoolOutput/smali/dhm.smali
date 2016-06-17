.class final Ldhm;
.super Ljava/lang/Object;
.source "AppUpgradeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldhl;


# direct methods
.method constructor <init>(Ldhl;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Ldhm;->a:Ldhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Ldhm;->a:Ldhl;

    iget-object v0, v0, Ldhl;->b:Ldhk;

    iget-object v0, v0, Ldhk;->a:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

    iget-object v1, p0, Ldhm;->a:Ldhl;

    iget-object v1, v1, Ldhl;->a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->a(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;Lcom/wandoujia/ripple_framework/view/StatefulButton;)V

    .line 205
    return-void
.end method
