.class final Ldmk;
.super Ljava/lang/Object;
.source "DownloadButtonPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

.field private synthetic b:Ldmj;


# direct methods
.method constructor <init>(Ldmj;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Ldmk;->b:Ldmj;

    iput-object p2, p0, Ldmk;->a:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Ldmk;->b:Ldmj;

    iget-object v0, v0, Ldmj;->a:Ldmi;

    iget-object v0, v0, Ldmi;->a:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Ldmk;->b:Ldmj;

    iget-object v0, v0, Ldmj;->a:Ldmi;

    iget-object v1, p0, Ldmk;->a:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;->b:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    iput-object v1, v0, Ldmi;->d:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    .line 67
    sget-object v0, Ldmm;->a:[I

    iget-object v1, p0, Ldmk;->b:Ldmj;

    iget-object v1, v1, Ldmj;->a:Ldmi;

    iget-object v1, v1, Ldmi;->d:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    iget-object v0, p0, Ldmk;->b:Ldmj;

    iget-object v1, v0, Ldmj;->a:Ldmi;

    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v2, p0, Ldmk;->b:Ldmj;

    iget-object v2, v2, Ldmj;->a:Ldmi;

    iget-object v2, v2, Ldmi;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldmi;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
