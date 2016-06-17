.class final Ldmj;
.super Ljava/lang/Object;
.source "DownloadButtonPresenter.java"

# interfaces
.implements Lhfq;


# instance fields
.field final synthetic a:Ldmi;


# direct methods
.method constructor <init>(Ldmi;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Ldmj;->a:Ldmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;->a:Ljava/lang/String;

    iget-object v1, p0, Ldmj;->a:Ldmi;

    iget-object v1, v1, Ldmi;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Ldmj;->a:Ldmi;

    iget-object v0, v0, Ldmi;->c:Landroid/os/Handler;

    new-instance v1, Ldmk;

    invoke-direct {v1, p0, p1}, Ldmk;-><init>(Ldmj;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
