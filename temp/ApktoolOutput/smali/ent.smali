.class final Lent;
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
    .line 273
    iput-object p1, p0, Lent;->b:Leno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p2, p0, Lent;->a:Leoa;

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Leno;Leoa;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lent;-><init>(Leno;Leoa;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 280
    :try_start_0
    iget-object v0, p0, Lent;->b:Leno;

    invoke-static {v0}, Leno;->c(Leno;)Leob;

    move-result-object v0

    iget-object v1, p0, Lent;->a:Leoa;

    invoke-virtual {v0, v1}, Leob;->a(Leoa;)Leoc;

    move-result-object v0

    .line 282
    new-instance v1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;-><init>()V

    .line 283
    new-instance v2, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;-><init>()V

    .line 284
    new-instance v3, Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;-><init>()V

    .line 285
    iget-object v4, v0, Leoc;->a:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    .line 287
    iget-object v5, p0, Lent;->b:Leno;

    iget-object v6, v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v6, v6, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    invoke-static {v5, v6}, Leno;->a(Leno;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v4}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;->click(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;

    move-result-object v5

    new-instance v6, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    iget-object v7, p0, Lent;->b:Leno;

    invoke-static {v7}, Leno;->f(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)V

    invoke-virtual {v6}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;->refer_click(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;

    move-result-object v5

    new-instance v6, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    iget-object v7, p0, Lent;->b:Leno;

    invoke-static {v7}, Leno;->e(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)V

    invoke-virtual {v6}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;->from_click(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;

    .line 293
    iget-object v5, p0, Lent;->b:Leno;

    invoke-virtual {v4}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v4

    invoke-static {v5, v4}, Leno;->b(Leno;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 295
    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/ClickEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/ClickEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->click_event(Lcom/wandoujia/logv3/model/packages/ClickEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    .line 296
    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/EventPackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->event_package(Lcom/wandoujia/logv3/model/packages/EventPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 297
    iget-object v0, v0, Leoc;->b:Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 298
    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->extra_package(Lcom/wandoujia/logv3/model/packages/ExtraPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 299
    iget-object v0, p0, Lent;->b:Leno;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->real_time(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Leno;->a(Leno;Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    invoke-static {v0}, Leod;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
