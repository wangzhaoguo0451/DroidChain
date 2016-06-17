.class public final Ldyx;
.super Ljava/lang/Object;
.source "GameLauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Ldyx;->a:Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0}, Lebl;->b()Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lg;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    iget-object v0, v0, Lebl;->c:Leba;

    invoke-virtual {v0}, Leba;->b()V

    .line 111
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-virtual {v0}, Lebl;->b()Ljava/util/List;

    move-result-object v0

    .line 113
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 114
    if-lez v0, :cond_1

    .line 115
    invoke-static {}, Legx;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldyy;

    invoke-direct {v1, p0}, Ldyy;-><init>(Ldyx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    :cond_1
    return-void
.end method
