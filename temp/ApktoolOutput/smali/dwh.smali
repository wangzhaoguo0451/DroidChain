.class public final Ldwh;
.super Ljava/lang/Object;
.source "UpdateNotification.java"

# interfaces
.implements Lhqm;


# instance fields
.field a:Lcom/wandoujia/update/LocalUpdateService;

.field public b:Z

.field private c:Landroid/content/ServiceConnection;

.field private d:Ldwg;

.field private e:Ldwg;

.field private f:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

.field private g:I

.field private synthetic h:Lcom/wandoujia/jupiter/update/UpdateNotification;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/update/UpdateNotification;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0c0002

    .line 360
    iput-object p1, p0, Ldwh;->h:Lcom/wandoujia/jupiter/update/UpdateNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iget-object v0, p1, Lcom/wandoujia/jupiter/update/UpdateNotification;->a:Lcom/wandoujia/p4/views/CommonPopupView;

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/views/CommonPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    .line 362
    new-instance v1, Ldwg;

    invoke-direct {v1, v0}, Ldwg;-><init>(Lcom/wandoujia/ripple_framework/view/StatefulButton;)V

    iput-object v1, p0, Ldwh;->e:Ldwg;

    .line 364
    iget-object v0, p1, Lcom/wandoujia/jupiter/update/UpdateNotification;->b:Lhoj;

    invoke-virtual {v0, v2}, Lhoj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/StatefulButton;

    .line 365
    new-instance v1, Ldwg;

    invoke-direct {v1, v0}, Ldwg;-><init>(Lcom/wandoujia/ripple_framework/view/StatefulButton;)V

    iput-object v1, p0, Ldwh;->d:Ldwg;

    .line 366
    return-void
.end method

.method private a(Ldwg;)V
    .locals 7
    .parameter

    .prologue
    const v2, 0x7f0a00bf

    const v4, 0x7f020342

    .line 443
    iget-object v5, p0, Ldwh;->f:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    const v3, 0x7f020340

    const v1, 0x7f0a01b9

    const-string v0, ""

    sget-object v6, Ldwf;->b:[I

    invoke-virtual {v5}, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    move v2, v3

    :goto_0
    iget-object v3, p1, Ldwg;->a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-virtual {v3, v2}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setBackgroundResource(I)V

    iget-object v2, p1, Ldwg;->a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-virtual {v2, v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Ldwg;->a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    iget-object v2, p1, Ldwg;->a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 444
    iget-object v0, p0, Ldwh;->f:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    sget-object v1, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->DOWNLOADING:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    if-ne v0, v1, :cond_0

    .line 445
    invoke-direct {p0}, Ldwh;->d()F

    move-result v0

    invoke-virtual {p1, v0}, Ldwg;->a(F)V

    .line 447
    :cond_0
    return-void

    .line 443
    :pswitch_0
    iget-object v0, p1, Ldwg;->b:Ljava/lang/String;

    move v2, v3

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Ldwg;->a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e05c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move v2, v4

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Ldwg;->a:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0516

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move v2, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Ldwh;->e:Ldwg;

    invoke-direct {p0, v0}, Ldwh;->a(Ldwg;)V

    .line 439
    iget-object v0, p0, Ldwh;->d:Ldwg;

    invoke-direct {p0, v0}, Ldwh;->a(Ldwg;)V

    .line 440
    return-void
.end method

.method private d()F
    .locals 2

    .prologue
    .line 450
    const/high16 v0, 0x3f80

    iget v1, p0, Ldwh;->g:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldwh;->b:Z

    .line 404
    sget-object v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->FAILED:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    iput-object v0, p0, Ldwh;->f:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    .line 405
    invoke-direct {p0}, Ldwh;->c()V

    .line 406
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 410
    iput p1, p0, Ldwh;->g:I

    .line 412
    invoke-direct {p0}, Ldwh;->d()F

    move-result v0

    .line 413
    iget-object v1, p0, Ldwh;->e:Ldwg;

    invoke-virtual {v1, v0}, Ldwg;->a(F)V

    .line 414
    iget-object v1, p0, Ldwh;->d:Ldwg;

    invoke-virtual {v1, v0}, Ldwg;->a(F)V

    .line 415
    return-void
.end method

.method public final a(Lcom/wandoujia/update/protocol/UpdateInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    return-void
.end method

.method public final a(Lcom/wandoujia/update/protocol/UpdateInfo;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 419
    iget-object v0, p0, Ldwh;->h:Lcom/wandoujia/jupiter/update/UpdateNotification;

    iget-object v0, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->d:Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iput-object p2, v0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->installerPath:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Ldwh;->h:Lcom/wandoujia/jupiter/update/UpdateNotification;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wandoujia/jupiter/update/UpdateNotification;->f:Z

    .line 421
    sget-object v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->SUCCESS:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    iput-object v0, p0, Ldwh;->f:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    .line 422
    invoke-direct {p0}, Ldwh;->c()V

    .line 423
    iget-object v0, p0, Ldwh;->h:Lcom/wandoujia/jupiter/update/UpdateNotification;

    invoke-static {v0}, Lcom/wandoujia/jupiter/update/UpdateNotification;->a(Lcom/wandoujia/jupiter/update/UpdateNotification;)V

    .line 424
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 428
    if-eqz p1, :cond_0

    .line 429
    iget-object v0, p0, Ldwh;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-virtual {v0}, Lcom/wandoujia/update/LocalUpdateService;->b()Z

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldwh;->b:Z

    .line 433
    sget-object v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->FAILED:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    iput-object v0, p0, Ldwh;->f:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    .line 434
    invoke-direct {p0}, Ldwh;->c()V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 369
    iget-object v0, p0, Ldwh;->c:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ldwi;

    invoke-direct {v0, p0}, Ldwi;-><init>(Ldwh;)V

    iput-object v0, p0, Ldwh;->c:Landroid/content/ServiceConnection;

    .line 385
    :cond_0
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->d()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/JupiterApplication;->c()Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    move-result-object v0

    .line 387
    iput-boolean v3, v0, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->downloadInstallerOnlyOnWifi:Z

    .line 388
    iget-object v1, p0, Ldwh;->h:Lcom/wandoujia/jupiter/update/UpdateNotification;

    iget-object v1, v1, Lcom/wandoujia/jupiter/update/UpdateNotification;->e:Landroid/app/Activity;

    iget-object v2, p0, Ldwh;->c:Landroid/content/ServiceConnection;

    invoke-static {v1, v2, v0}, Lhrm;->a(Landroid/content/Context;Landroid/content/ServiceConnection;Lcom/wandoujia/update/LocalUpdateService$UpdateParams;)Z

    .line 389
    iput-boolean v3, p0, Ldwh;->b:Z

    .line 390
    sget-object v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->DOWNLOADING:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    iput-object v0, p0, Ldwh;->f:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    .line 391
    invoke-direct {p0}, Ldwh;->c()V

    .line 392
    return-void
.end method
