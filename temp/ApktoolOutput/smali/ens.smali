.class final Lens;
.super Ljava/lang/Object;
.source "LogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Leoa;

.field private synthetic b:Leno;


# direct methods
.method private constructor <init>(Leno;Leoa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lens;->b:Leno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p2, p0, Lens;->a:Leoa;

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Leno;Leoa;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lens;-><init>(Leno;Leoa;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lens;->b:Leno;

    invoke-static {v0}, Leno;->c(Leno;)Leob;

    move-result-object v0

    iget-object v1, p0, Lens;->a:Leoa;

    invoke-virtual {v0, v1}, Leob;->a(Leoa;)Leoc;

    move-result-object v0

    .line 246
    new-instance v1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;-><init>()V

    .line 247
    new-instance v2, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;-><init>()V

    .line 248
    new-instance v3, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;-><init>()V

    .line 249
    iget-object v4, v0, Leoc;->a:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    .line 250
    sget-object v5, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;->CARD:Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    invoke-virtual {v3, v5}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->type(Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->view(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;

    move-result-object v4

    new-instance v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    iget-object v6, p0, Lens;->b:Leno;

    invoke-static {v6}, Leno;->g(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)V

    invoke-virtual {v5}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->from_page(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;

    move-result-object v4

    new-instance v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    iget-object v6, p0, Lens;->b:Leno;

    invoke-static {v6}, Leno;->f(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)V

    invoke-virtual {v5}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->refer_click(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;

    move-result-object v4

    new-instance v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    iget-object v6, p0, Lens;->b:Leno;

    invoke-static {v6}, Leno;->e(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)V

    invoke-virtual {v5}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->from_click(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;

    .line 255
    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/ShowEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->show_event(Lcom/wandoujia/logv3/model/packages/ShowEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    .line 256
    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/EventPackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->event_package(Lcom/wandoujia/logv3/model/packages/EventPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 257
    iget-object v0, v0, Leoc;->b:Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 258
    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->extra_package(Lcom/wandoujia/logv3/model/packages/ExtraPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 259
    iget-object v0, p0, Lens;->b:Leno;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->real_time(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Leno;->a(Leno;Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    invoke-static {v0}, Leod;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
