.class public Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;
.super Lcom/wandoujia/p4/views/button/BaseButton;
.source "VideoPlayAppDownloadButton.java"


# instance fields
.field public a:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

.field private b:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

.field private f:Lgec;

.field private g:Lged;

.field private final h:Lcom/wandoujia/appmanager/LocalAppChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/views/button/BaseButton;-><init>(Landroid/content/Context;)V

    .line 196
    new-instance v0, Lgea;

    invoke-direct {v0, p0}, Lgea;-><init>(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->h:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 244
    invoke-direct {p0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b()V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/views/button/BaseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    new-instance v0, Lgea;

    invoke-direct {v0, p0}, Lgea;-><init>(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->h:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 239
    invoke-direct {p0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b()V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/p4/views/button/BaseButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    new-instance v0, Lgea;

    invoke-direct {v0, p0}, Lgea;-><init>(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->h:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 234
    invoke-direct {p0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b()V

    .line 235
    return-void
.end method

.method static synthetic a(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v0

    new-instance v1, Lhby;

    invoke-direct {v1}, Lhby;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getAppDownloadUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->d:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v2, v1, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v2, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v2, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhby;->j:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->d:Ljava/lang/String;

    iput-object v0, v1, Lhby;->h:Ljava/lang/String;

    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v1}, Lhby;->a()Lhbx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->d:Ljava/lang/String;

    invoke-static {v1}, Lger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lg;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->e:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 322
    sget-object v0, Lgeb;->b:[I

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 330
    :pswitch_0
    sget-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->CANCEL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setAction(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;)V

    goto :goto_0

    .line 333
    :pswitch_1
    sget-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->DOWNLOAD_INSTALL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setAction(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;)V

    goto :goto_0

    .line 336
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setButtonAction(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :pswitch_3
    sget-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->RETRY:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setAction(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;)V

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->e:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->h:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 257
    return-void
.end method

.method static synthetic c(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Lcom/wandoujia/p4/video2/model/VideoPlayModel;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->a:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Lged;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->g:Lged;

    return-object v0
.end method

.method private setButtonAction(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 369
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/appmanager/AppManager;->g(Ljava/lang/String;)Lcom/wandoujia/appmanager/AppManager$AppState;

    move-result-object v0

    .line 371
    sget-object v1, Lgeb;->c:[I

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager$AppState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 381
    :goto_0
    return-void

    .line 374
    :pswitch_0
    sget-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->INSTALLING:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setAction(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;)V

    goto :goto_0

    .line 377
    :pswitch_1
    sget-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->OPEN:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setAction(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;)V

    goto :goto_0

    .line 380
    :pswitch_2
    sget-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->INSTALL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setAction(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;)V

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-virtual {v0, p0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->onClick(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V

    .line 391
    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->f:Lgec;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->f:Lgec;

    iget-object v1, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-interface {v0, v1}, Lgec;->a(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;)V

    .line 395
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->a:Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    iput-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->e:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iput-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setEnabled(Z)V

    .line 293
    iput-object p1, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->c:Ljava/lang/String;

    .line 294
    iput-object p2, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->d:Ljava/lang/String;

    .line 295
    iput-object p3, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->e:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 297
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p3, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CANCELED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p3, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->FAILED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-ne v0, v1, :cond_1

    .line 300
    :cond_0
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setButtonAction(Ljava/lang/String;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-direct {p0, p3}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0
.end method

.method public getAction()Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/wandoujia/p4/views/button/BaseButton;->onAttachedToWindow()V

    .line 262
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Lcom/wandoujia/p4/views/button/BaseButton;->onDetachedFromWindow()V

    .line 269
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public onEvent(Lcom/wandoujia/ripple_framework/event/DownloadEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 274
    sget-object v0, Lgeb;->a:[I

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->a:Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/event/DownloadEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 276
    :pswitch_0
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/event/DownloadEvent;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 277
    iget-object v1, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iput-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->e:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 279
    invoke-direct {p0, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->getMeasuredWidth()I

    move-result v0

    .line 427
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/views/button/BaseButton;->onMeasure(II)V

    .line 428
    invoke-virtual {p0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->getMeasuredWidth()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setMeasuredDimension(II)V

    .line 431
    :cond_0
    return-void
.end method

.method public setAction(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;)V
    .locals 1
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    if-eq v0, p1, :cond_0

    .line 349
    iput-object p1, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    .line 350
    invoke-virtual {p1, p0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->apply(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V

    .line 351
    invoke-virtual {p0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->refreshDrawableState()V

    .line 353
    :cond_0
    return-void
.end method

.method public setOnButtonClickListener(Lgec;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->f:Lgec;

    .line 249
    return-void
.end method

.method public setOnInstalledListener(Lged;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->g:Lged;

    .line 253
    return-void
.end method
