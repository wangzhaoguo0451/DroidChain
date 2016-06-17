.class final Lebr;
.super Ljava/lang/Object;
.source "LauncherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lebq;


# direct methods
.method constructor <init>(Lebq;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lebr;->b:Lebq;

    iput-boolean p2, p0, Lebr;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 48
    iget-boolean v0, p0, Lebr;->a:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lebr;->b:Lebq;

    iget-object v0, v0, Lebq;->a:Lcom/wandoujia/launcher/launcher/service/LauncherService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "launcher.intent.action.SHORTCUT_CREATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher/launcher/service/LauncherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    :cond_0
    return-void
.end method
