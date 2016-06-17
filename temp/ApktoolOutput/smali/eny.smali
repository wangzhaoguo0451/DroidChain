.class public Leny;
.super Ljava/lang/Object;
.source "LogManager.java"

# interfaces
.implements Lenk;
.implements Lenm;


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field private static final g:Ljava/lang/String;

.field private static final h:I

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I

.field private static final n:I

.field private static o:Leny;


# instance fields
.field public final e:Leni;

.field public final f:Leno;

.field private final p:Lemu;

.field private final q:Lcom/wandoujia/logv3/toolkit/LaunchLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Leny;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leny;->g:Ljava/lang/String;

    .line 43
    sget v0, Lcom/wandoujia/log/R$id;->tag_log_page_vertical:I

    sput v0, Leny;->h:I

    .line 44
    sget v0, Lcom/wandoujia/log/R$id;->tag_log_page_uri:I

    sput v0, Leny;->a:I

    .line 45
    sget v0, Lcom/wandoujia/log/R$id;->tag_log_page_uri_params:I

    sput v0, Leny;->b:I

    .line 46
    sget v0, Lcom/wandoujia/log/R$id;->tag_log_page_uri_anchor:I

    sput v0, Leny;->c:I

    .line 47
    sget v0, Lcom/wandoujia/log/R$id;->tag_log_module:I

    sput v0, Leny;->i:I

    .line 48
    sget v0, Lcom/wandoujia/log/R$id;->tag_log_view_packages:I

    sput v0, Leny;->j:I

    .line 49
    sget v0, Lcom/wandoujia/log/R$id;->tag_log_index_packages:I

    sput v0, Leny;->k:I

    .line 50
    sget v0, Lcom/wandoujia/log/R$id;->tag_log_extra_packages:I

    sput v0, Leny;->l:I

    .line 51
    sget v0, Lcom/wandoujia/log/R$id;->tag_log_view_enable_card_show:I

    sput v0, Leny;->m:I

    .line 52
    sget v0, Lcom/wandoujia/log/R$id;->tag_log_view_enable_sub_card_show:I

    sput v0, Leny;->d:I

    .line 54
    sget v0, Lcom/wandoujia/log/R$id;->tag_log_forbidden_page_show:I

    sput v0, Leny;->n:I

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lemu;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Leny;->p:Lemu;

    .line 69
    new-instance v0, Leni;

    invoke-direct {v0, p0}, Leni;-><init>(Lenk;)V

    iput-object v0, p0, Leny;->e:Leni;

    .line 70
    new-instance v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;

    invoke-direct {v0, p0}, Lcom/wandoujia/logv3/toolkit/LaunchLogger;-><init>(Lenm;)V

    iput-object v0, p0, Leny;->q:Lcom/wandoujia/logv3/toolkit/LaunchLogger;

    .line 71
    invoke-static {p1, p2}, Ld;->a(Landroid/content/Context;Lemu;)Lemw;

    move-result-object v0

    .line 72
    new-instance v1, Leno;

    invoke-direct {v1, v0}, Leno;-><init>(Lemw;)V

    iput-object v1, p0, Leny;->f:Leno;

    .line 73
    return-void
.end method

.method public static a(Landroid/content/Context;Lemu;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v0, Leny;

    invoke-direct {v0, p0, p1}, Leny;-><init>(Landroid/content/Context;Lemu;)V

    sput-object v0, Leny;->o:Leny;

    .line 64
    new-instance v0, Leod;

    invoke-direct {v0}, Leod;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 65
    return-void
.end method

.method public static b()Leny;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Leny;->o:Leny;

    return-object v0
.end method

.method public static c(Landroid/view/View;)Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;
    .locals 2
    .parameter

    .prologue
    .line 286
    sget v0, Leny;->h:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 287
    instance-of v1, v0, Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    if-eqz v1, :cond_0

    .line 288
    check-cast v0, Lcom/wandoujia/logv3/model/packages/UrlPackage$Vertical;

    .line 290
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 422
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 423
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_0
    return-void
.end method

.method public static d(Landroid/view/View;)Leoj;
    .locals 2
    .parameter

    .prologue
    .line 294
    sget v0, Leny;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 295
    instance-of v1, v0, Leoj;

    if-eqz v1, :cond_0

    .line 296
    check-cast v0, Leoj;

    .line 298
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 302
    sget v0, Leny;->c:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 303
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 304
    check-cast v0, Ljava/lang/String;

    .line 306
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    sget v0, Leny;->b:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 312
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 313
    check-cast v0, Ljava/util/List;

    .line 315
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 324
    sget v0, Leny;->i:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 325
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 326
    check-cast v0, Ljava/lang/String;

    .line 328
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Landroid/view/View;)Leok;
    .locals 2
    .parameter

    .prologue
    .line 349
    sget v0, Leny;->j:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 350
    instance-of v1, v0, Leok;

    if-eqz v1, :cond_0

    .line 351
    check-cast v0, Leok;

    .line 353
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Landroid/view/View;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;
    .locals 2
    .parameter

    .prologue
    .line 369
    sget v0, Leny;->k:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 370
    instance-of v1, v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    if-eqz v1, :cond_0

    .line 371
    check-cast v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    .line 373
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/view/View;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;
    .locals 2
    .parameter

    .prologue
    .line 407
    sget v0, Leny;->l:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 409
    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    .line 411
    sget v1, Leny;->l:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 413
    :cond_0
    return-object v0
.end method

.method public static l(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 469
    sget v0, Leny;->m:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 495
    sget v0, Leny;->d:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 525
    sget v0, Leny;->n:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static o(Landroid/view/View;)Leoa;
    .locals 1
    .parameter

    .prologue
    .line 429
    :try_start_0
    invoke-static {p0}, Lcom/wandoujia/logv3/toolkit/treebuilder/PopupLogTreeBuilder;->b(Landroid/view/View;)Lcom/wandoujia/logv3/toolkit/DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 431
    :goto_0
    if-eqz v0, :cond_1

    .line 432
    new-instance v0, Lcom/wandoujia/logv3/toolkit/treebuilder/PopupLogTreeBuilder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/toolkit/treebuilder/PopupLogTreeBuilder;-><init>()V

    .line 436
    :goto_1
    invoke-interface {v0, p0}, Lepa;->a(Landroid/view/View;)Leoa;

    move-result-object v0

    .line 442
    :goto_2
    return-object v0

    .line 429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 434
    :cond_1
    new-instance v0, Leoz;

    invoke-direct {v0}, Leoz;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 437
    :catch_0
    move-exception v0

    invoke-static {v0}, Leod;->a(Ljava/lang/Throwable;)V

    .line 442
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Leny;->p:Lemu;

    invoke-virtual {v0, p1}, Lemu;->a(Landroid/content/Intent;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;I)Leny;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-static {p1}, Leny;->i(Landroid/view/View;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    move-result-object v0

    .line 358
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;

    invoke-direct {v1, v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;->index(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    move-result-object v0

    sget v1, Leny;->k:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 360
    return-object p0
.end method

.method public final a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ContentPackage;)Leny;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-static {p1}, Leny;->j(Landroid/view/View;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->content_package(Lcom/wandoujia/logv3/model/packages/ContentPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 378
    return-object p0
.end method

.method public final a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;)Leny;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-static {p1}, Leny;->j(Landroid/view/View;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->game_launcher_package(Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 398
    return-object p0
.end method

.method public final a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Leny;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    sget v0, Leny;->j:I

    new-instance v1, Leok;

    invoke-direct {v1, p2, p3, p4}, Leok;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Leny;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    sget v0, Leny;->j:I

    new-instance v1, Leok;

    invoke-direct {v1, p2, p3, p4, p5}, Leok;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 345
    return-object p0
.end method

.method public final a(Landroid/view/View;Leoj;)Leny;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 239
    sget v0, Leny;->a:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 240
    return-object p0
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;)Leny;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 319
    sget v0, Leny;->i:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 320
    return-object p0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Leny;->f:Leno;

    iget-object v1, v0, Leno;->a:Landroid/os/Handler;

    new-instance v2, Lenq;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lenq;-><init>(Leno;B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    .line 118
    iget-object v0, p0, Leny;->q:Lcom/wandoujia/logv3/toolkit/LaunchLogger;

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->c:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    const-string v1, "LaunchLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Task is closed, duration is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->c:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide v8, v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->c:J

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->NOT_LAUNCH:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->a(Landroid/app/Activity;Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;)V

    .line 119
    :cond_1
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Leny;->q:Lcom/wandoujia/logv3/toolkit/LaunchLogger;

    sget-object v1, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->LAUNCHED:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->a(Landroid/app/Activity;Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;)V

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->RELOAD:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    invoke-virtual {v0, p1, p2, v1}, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;)Z

    .line 105
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Leny;->q:Lcom/wandoujia/logv3/toolkit/LaunchLogger;

    sget-object v1, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->LAUNCHED:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->a(Landroid/app/Activity;Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;)V

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->RELOAD:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    invoke-virtual {v0, p1, p2, v1}, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->a(Landroid/app/Activity;Landroid/content/Intent;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;)Z

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->c:J

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "force_not_launch"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    sget-object v1, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->NEW:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    invoke-virtual {v0, p1, p2, v1}, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->b(Landroid/app/Activity;Landroid/content/Intent;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 156
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Leny;->g:Ljava/lang/String;

    const-string v1, "logPageShow get a Context that is not an Activity"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :goto_0
    return-void

    .line 161
    :cond_0
    :try_start_0
    invoke-static {}, Leny;->c()V

    .line 162
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 163
    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Leny;

    .line 164
    invoke-static {v0}, Leny;->o(Landroid/view/View;)Leoa;

    move-result-object v0

    .line 165
    iget-object v1, p0, Leny;->f:Leno;

    iget-object v2, v1, Leno;->a:Landroid/os/Handler;

    new-instance v3, Lenw;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lenw;-><init>(Leno;Leoa;B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    invoke-static {v0}, Leod;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Leny;->c()V

    .line 178
    invoke-static {p1}, Ld;->e(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Leny;->f:Leno;

    invoke-static {p1}, Leny;->o(Landroid/view/View;)Leoa;

    move-result-object v1

    iget-object v2, v0, Leno;->a:Landroid/os/Handler;

    new-instance v3, Lens;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lens;-><init>(Leno;Leoa;B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    invoke-static {v0}, Leod;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Leny;->f:Leno;

    iget-object v1, v0, Leno;->a:Landroid/os/Handler;

    new-instance v2, Lenv;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p2, v3}, Lenv;-><init>(Leno;Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent;B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method public final a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Leny;->f:Leno;

    iget-object v1, v0, Leno;->a:Landroid/os/Handler;

    new-instance v2, Lenx;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, p2, v3}, Lenx;-><init>(Leno;Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Leny;->q:Lcom/wandoujia/logv3/toolkit/LaunchLogger;

    sget-object v1, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->USER_WANNA_CLOSE:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->a(Landroid/app/Activity;Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;)V

    .line 126
    return-void
.end method

.method public final b(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v1, p0, Leny;->q:Lcom/wandoujia/logv3/toolkit/LaunchLogger;

    sget-object v0, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->USER_WANNA_CLOSE:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->a:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    invoke-virtual {v0, v2}, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-object v2, Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;->LAUNCHED:Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;

    invoke-virtual {v1, p1, v2}, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->a(Landroid/app/Activity;Lcom/wandoujia/logv3/toolkit/LaunchLogger$LaunchState;)V

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;->RESTART:Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;

    invoke-virtual {v1, p1, p2, v0}, Lcom/wandoujia/logv3/toolkit/LaunchLogger;->b(Landroid/app/Activity;Landroid/content/Intent;Lcom/wandoujia/logv3/model/packages/ApplicationStartEvent$Reason;)V

    .line 112
    :cond_0
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 191
    :try_start_0
    invoke-static {}, Leny;->c()V

    .line 192
    invoke-static {p1}, Ld;->e(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Leny;->f:Leno;

    invoke-static {p1}, Leny;->o(Landroid/view/View;)Leoa;

    move-result-object v1

    iget-object v2, v0, Leno;->a:Landroid/os/Handler;

    new-instance v3, Lent;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lent;-><init>(Leno;Leoa;B)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    invoke-static {v0}, Leod;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final k(Landroid/view/View;)Leny;
    .locals 2
    .parameter

    .prologue
    .line 454
    sget v0, Leny;->m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 455
    if-nez v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 457
    sget v1, Leny;->m:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 459
    :cond_0
    return-object p0
.end method
