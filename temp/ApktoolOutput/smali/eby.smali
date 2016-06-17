.class final Leby;
.super Ljava/lang/Object;
.source "MarioShortcutUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lebx;


# direct methods
.method constructor <init>(Lebx;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Leby;->b:Lebx;

    iput-object p2, p0, Leby;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 88
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "launcher.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v1, "launcher.intent.extra.CREATE_ALWARYS"

    iget-object v2, p0, Leby;->b:Lebx;

    iget-boolean v2, v2, Lebx;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Leby;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
