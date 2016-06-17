.class final Ldzb;
.super Ljava/lang/Object;
.source "GameLauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Ldza;


# direct methods
.method constructor <init>(Ldza;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Ldzb;->b:Ldza;

    iput-object p2, p0, Ldzb;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Ldzb;->b:Ldza;

    iget-object v0, v0, Ldza;->a:Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;

    iget-object v1, p0, Ldzb;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;->a(Lcom/wandoujia/launcher/launcher/activity/GameLauncherActivity;Landroid/graphics/Bitmap;)V

    .line 155
    invoke-static {}, Lhrx;->a()Lhrx;

    move-result-object v0

    new-instance v1, Ldxr;

    const-string v2, "hide_bottom_label"

    invoke-direct {v1, v2}, Ldxr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 156
    return-void
.end method
