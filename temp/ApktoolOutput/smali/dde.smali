.class public final Ldde;
.super Ljava/lang/Object;
.source "DownloadInjectorDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Ldde;->a:Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 63
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lddt;

    iget-object v2, p0, Ldde;->a:Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;

    invoke-static {v2}, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->a(Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/ripple_framework/installer/AppTaskManager$Status;->PAUSE:Lcom/wandoujia/ripple_framework/installer/AppTaskManager$Status;

    invoke-direct {v1, v2, v3}, Lddt;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/ripple_framework/installer/AppTaskManager$Status;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Ldde;->a:Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/app/activity/DownloadInjectorDialogActivity;->onBackPressed()V

    .line 67
    return-void
.end method
