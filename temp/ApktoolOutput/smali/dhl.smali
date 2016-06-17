.class final Ldhl;
.super Ljava/lang/Object;
.source "AppUpgradeFragment.java"

# interfaces
.implements Lexf;


# instance fields
.field final synthetic a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

.field final synthetic b:Ldhk;


# direct methods
.method constructor <init>(Ldhk;Lcom/wandoujia/ripple_framework/view/StatefulButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Ldhl;->b:Ldhk;

    iput-object p2, p0, Ldhl;->a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldhm;

    invoke-direct {v1, p0}, Ldhm;-><init>(Ldhl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method
