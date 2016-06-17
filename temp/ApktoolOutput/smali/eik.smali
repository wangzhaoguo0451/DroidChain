.class public Leik;
.super Ljava/lang/Object;
.source "AppButtonSelector.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;
.implements Lcom/wandoujia/mvc/Unbindable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Leix;",
        "Leiu;",
        ">;",
        "Lcom/wandoujia/mvc/Unbindable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/wandoujia/appmanager/LocalAppChangedListener;

.field public b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

.field public c:Leiu;

.field protected final d:Leiw;

.field protected final e:Leiw;

.field private final f:Leeq;

.field private final g:Lega;

.field private final h:Leij;

.field private final i:Lehq;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Leiw;

    sget v1, Lcom/wandoujia/launcher_base/R$attr;->gl_state_highLight:I

    sget v2, Lcom/wandoujia/launcher_base/R$string;->installing:I

    invoke-direct {v0, v1, v2}, Leiw;-><init>(II)V

    iput-object v0, p0, Leik;->d:Leiw;

    .line 50
    new-instance v0, Leiw;

    sget v1, Lcom/wandoujia/launcher_base/R$attr;->gl_state_highLight:I

    sget v2, Lcom/wandoujia/launcher_base/R$string;->extracting:I

    invoke-direct {v0, v1, v2}, Leiw;-><init>(II)V

    iput-object v0, p0, Leik;->e:Leiw;

    .line 56
    new-instance v0, Leil;

    invoke-direct {v0, p0}, Leil;-><init>(Leik;)V

    iput-object v0, p0, Leik;->a:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 164
    new-instance v0, Leim;

    invoke-direct {v0, p0}, Leim;-><init>(Leik;)V

    iput-object v0, p0, Leik;->f:Leeq;

    .line 188
    new-instance v0, Lein;

    invoke-direct {v0, p0}, Lein;-><init>(Leik;)V

    iput-object v0, p0, Leik;->g:Lega;

    .line 212
    new-instance v0, Leio;

    invoke-direct {v0, p0}, Leio;-><init>(Leik;)V

    iput-object v0, p0, Leik;->h:Leij;

    .line 242
    new-instance v0, Lehq;

    invoke-direct {v0, p0}, Lehq;-><init>(Leik;)V

    iput-object v0, p0, Leik;->i:Lehq;

    .line 306
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-object v1, p0, Leik;->a:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 307
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v1, p0, Leik;->f:Leeq;

    invoke-interface {v0, v1}, Leen;->a(Leeq;)V

    .line 308
    invoke-static {}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a()Lcom/wandoujia/launcher_base/utils/ZipManager;

    move-result-object v0

    iget-object v1, p0, Leik;->h:Leij;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Leij;)V

    .line 309
    invoke-static {}, Lehi;->a()Lehi;

    move-result-object v0

    iget-object v1, p0, Leik;->i:Lehq;

    iget-object v2, v0, Lehi;->b:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lehi;->b:Ljava/util/Set;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)Leiw;
    .locals 2
    .parameter

    .prologue
    .line 256
    sget-object v0, Leir;->a:[I

    invoke-virtual {p1}, Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 262
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 258
    :pswitch_0
    iget-object v0, p0, Leik;->e:Leiw;

    goto :goto_0

    .line 260
    :pswitch_1
    invoke-virtual {p0}, Leik;->a()Leiw;

    move-result-object v0

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Leik;)Leiw;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Leik;->e()Leiw;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Leik;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)Leiw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Leik;->a(Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)Leiw;

    move-result-object v0

    return-object v0
.end method

.method public static c()Leiw;
    .locals 4

    .prologue
    .line 342
    new-instance v0, Leiw;

    sget v1, Lcom/wandoujia/launcher_base/R$attr;->gl_state_unHighLight:I

    sget v2, Lcom/wandoujia/launcher_base/R$string;->packet_detecting:I

    new-instance v3, Lcom/wandoujia/mvc/Action$EmptyAction;

    invoke-direct {v3}, Lcom/wandoujia/mvc/Action$EmptyAction;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Leiw;-><init>(IILcom/wandoujia/mvc/Action;)V

    return-object v0
.end method

.method private d()Lcom/wandoujia/mvc/Action;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 386
    .line 388
    iget-object v0, p0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    .line 396
    :goto_0
    if-eqz v2, :cond_1

    .line 397
    new-instance v0, Lefe;

    iget-object v1, p0, Leik;->c:Leiu;

    invoke-direct {v0, v2, v1}, Lefe;-><init>(Landroid/app/Activity;Leiu;)V

    .line 401
    :goto_1
    return-object v0

    .line 390
    :cond_0
    iget-object v0, p0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    .line 392
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 393
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 399
    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method private e()Leiw;
    .locals 5

    .prologue
    .line 405
    invoke-direct {p0}, Leik;->d()Lcom/wandoujia/mvc/Action;

    move-result-object v0

    .line 406
    new-instance v1, Leiw;

    sget v2, Lcom/wandoujia/launcher_base/R$attr;->gl_state_highLight:I

    sget v3, Lcom/wandoujia/launcher_base/R$string;->install:I

    new-instance v4, Leiq;

    invoke-direct {v4, v0}, Leiq;-><init>(Lcom/wandoujia/mvc/Action;)V

    invoke-direct {v1, v2, v3, v4}, Leiw;-><init>(IILcom/wandoujia/mvc/Action;)V

    return-object v1
.end method


# virtual methods
.method public a()Leiw;
    .locals 1

    .prologue
    .line 420
    invoke-direct {p0}, Leik;->e()Leiw;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Leiw;
    .locals 4
    .parameter

    .prologue
    .line 283
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/appmanager/AppManager;->g(Ljava/lang/String;)Lcom/wandoujia/appmanager/AppManager$AppState;

    move-result-object v0

    .line 284
    sget-object v1, Leir;->c:[I

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager$AppState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 302
    :cond_0
    invoke-virtual {p0}, Leik;->a()Leiw;

    move-result-object v0

    :goto_0
    return-object v0

    .line 288
    :pswitch_0
    iget-object v0, p0, Leik;->d:Leiw;

    goto :goto_0

    .line 290
    :pswitch_1
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/appmanager/AppManager;->d(Ljava/lang/String;)Lcom/wandoujia/appmanager/LocalAppInfo;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    new-instance v0, Leiw;

    sget v1, Lcom/wandoujia/launcher_base/R$attr;->gl_state_highLight:I

    sget v2, Lcom/wandoujia/launcher_base/R$string;->upgrade:I

    invoke-direct {p0}, Leik;->d()Lcom/wandoujia/mvc/Action;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Leiw;-><init>(IILcom/wandoujia/mvc/Action;)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p0}, Leik;->b()Leiw;

    move-result-object v0

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 427
    return-void
.end method

.method public a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 5
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Leik;->c:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    sget-object v0, Leir;->b:[I

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Leik;->c:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leik;->a(Ljava/lang/String;)Leiw;

    move-result-object v0

    .line 436
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v1, v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    goto :goto_0

    .line 435
    :pswitch_0
    new-instance v0, Leiw;

    sget v1, Lcom/wandoujia/launcher_base/R$attr;->gl_state_unHighLight:I

    sget v2, Lcom/wandoujia/launcher_base/R$string;->pause:I

    new-instance v3, Lefb;

    invoke-direct {v3, p1}, Lefb;-><init>(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    invoke-direct {v0, v1, v2, v3}, Leiw;-><init>(IILcom/wandoujia/mvc/Action;)V

    goto :goto_1

    :pswitch_1
    new-instance v0, Leiw;

    sget v1, Lcom/wandoujia/launcher_base/R$attr;->gl_state_unHighLight:I

    sget v2, Lcom/wandoujia/launcher_base/R$string;->pause:I

    new-instance v3, Lefb;

    invoke-direct {v3, p1}, Lefb;-><init>(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    invoke-direct {v0, v1, v2, v3}, Leiw;-><init>(IILcom/wandoujia/mvc/Action;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Leiw;

    sget v1, Lcom/wandoujia/launcher_base/R$attr;->gl_state_unHighLight:I

    sget v2, Lcom/wandoujia/launcher_base/R$string;->continue_download:I

    new-instance v3, Lefc;

    iget-object v4, p0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v4}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lefc;-><init>(Landroid/content/Context;Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    invoke-direct {v0, v1, v2, v3}, Leiw;-><init>(IILcom/wandoujia/mvc/Action;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Leik;->c:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leik;->a(Ljava/lang/String;)Leiw;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Leix;Leiu;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-interface {p1}, Leix;->a()Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v0

    iput-object v0, p0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    .line 315
    iput-object p2, p0, Leik;->c:Leiu;

    .line 316
    iget-object v0, p0, Leik;->c:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Leip;

    invoke-direct {v1, p0}, Leip;-><init>(Leik;)V

    invoke-static {v0, v1}, Leeu;->a(Ljava/lang/String;Leey;)V

    .line 331
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v1, p0, Leik;->c:Leiu;

    invoke-interface {v1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leik;->g:Lega;

    invoke-interface {v0, v1, v2}, Leen;->a(Ljava/lang/String;Lega;)V

    .line 333
    return-void
.end method

.method public b()Leiw;
    .locals 5

    .prologue
    .line 347
    new-instance v0, Leiw;

    sget v1, Lcom/wandoujia/launcher_base/R$attr;->gl_state_unHighLight:I

    sget v2, Lcom/wandoujia/launcher_base/R$string;->open:I

    new-instance v3, Leei;

    iget-object v4, p0, Leik;->c:Leiu;

    invoke-interface {v4}, Leiu;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Leei;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Leiw;-><init>(IILcom/wandoujia/mvc/Action;)V

    return-object v0
.end method

.method protected b(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 442
    invoke-static {}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a()Lcom/wandoujia/launcher_base/utils/ZipManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    iget-object v1, p0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    if-eqz v1, :cond_0

    .line 444
    invoke-direct {p0, v0}, Leik;->a(Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)Leiw;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_0

    .line 446
    iget-object v1, p0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v1, v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setState(Leiw;)V

    .line 449
    :cond_0
    return-void
.end method

.method public synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    check-cast p1, Leix;

    check-cast p2, Leiu;

    invoke-virtual {p0, p1, p2}, Leik;->a(Leix;Leiu;)V

    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 337
    iput-object v0, p0, Leik;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    .line 338
    iput-object v0, p0, Leik;->c:Leiu;

    .line 339
    return-void
.end method
