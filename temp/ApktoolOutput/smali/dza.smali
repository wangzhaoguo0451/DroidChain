.class public final Ldza;
.super Ljava/lang/Object;
.source "GameLauncherActivity.java"

# interfaces
.implements Ledr;


# instance fields
.field final synthetic a:Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Ldza;->a:Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Ldza;->a:Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;

    invoke-static {v0}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;->a(Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {}, Legx;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldzb;

    invoke-direct {v1, p0, p1}, Ldzb;-><init>(Ldza;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
