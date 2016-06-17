.class final Lekh;
.super Ljava/lang/Object;
.source "StatefulCtrl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lejy;


# direct methods
.method constructor <init>(Lejy;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lekh;->a:Lejy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 218
    sget-object v0, Lekc;->b:[I

    iget-object v1, p0, Lekh;->a:Lejy;

    iget-object v1, v1, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    invoke-interface {v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->getState()Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 246
    :goto_0
    return-void

    .line 220
    :pswitch_0
    iget-object v1, p0, Lekh;->a:Lejy;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lefe;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, v1, Lejy;->b:Leiu;

    invoke-direct {v2, v0, v1}, Lefe;-><init>(Landroid/app/Activity;Leiu;)V

    invoke-virtual {v2}, Lefe;->execute()V

    .line 221
    iget-object v0, p0, Lekh;->a:Lejy;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v2, "download_app"

    invoke-static {v0, p1, v1, v2}, Lejy;->a(Lejy;Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v0, p0, Lekh;->a:Lejy;

    new-instance v1, Lejz;

    invoke-direct {v1, v0}, Lejz;-><init>(Lejy;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lejz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 226
    iget-object v0, p0, Lekh;->a:Lejy;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->PAUSE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v2, "pause_download"

    invoke-static {v0, p1, v1, v2}, Lejy;->a(Lejy;Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :pswitch_2
    iget-object v0, p0, Lekh;->a:Lejy;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lekd;

    invoke-direct {v2, v0, v1}, Lekd;-><init>(Lejy;Landroid/content/Context;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lekd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 231
    iget-object v0, p0, Lekh;->a:Lejy;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->RESUME:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v2, "resume_download"

    invoke-static {v0, p1, v1, v2}, Lejy;->a(Lejy;Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :pswitch_3
    iget-object v0, p0, Lekh;->a:Lejy;

    new-instance v1, Leke;

    invoke-direct {v1, v0}, Leke;-><init>(Lejy;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Leke;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 238
    iget-object v0, p0, Lekh;->a:Lejy;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v2, "install_app"

    invoke-static {v0, p1, v1, v2}, Lejy;->a(Lejy;Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :pswitch_4
    iget-object v0, p0, Lekh;->a:Lejy;

    iget-object v1, v0, Lejy;->c:Lekl;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lejy;->c:Lekl;

    iget-object v2, v0, Lejy;->b:Leiu;

    invoke-virtual {v1, v2}, Lekl;->a(Leiu;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    iget-object v0, v0, Lejy;->b:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->b(Ljava/lang/String;)V

    .line 243
    :cond_1
    iget-object v0, p0, Lekh;->a:Lejy;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v2, "launch_local_app"

    invoke-static {v0, p1, v1, v2}, Lejy;->a(Lejy;Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
