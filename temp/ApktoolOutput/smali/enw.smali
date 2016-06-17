.class final Lenw;
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
    .line 186
    iput-object p1, p0, Lenw;->b:Leno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lenw;->a:Leoa;

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Leno;Leoa;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lenw;-><init>(Leno;Leoa;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lenw;->b:Leno;

    invoke-static {v0}, Leno;->c(Leno;)Leob;

    move-result-object v0

    iget-object v1, p0, Lenw;->a:Leoa;

    invoke-virtual {v0, v1}, Leob;->a(Leoa;)Leoc;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;-><init>()V

    .line 196
    new-instance v2, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;-><init>()V

    .line 197
    new-instance v3, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;-><init>()V

    .line 198
    iget-object v4, v0, Leoc;->a:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    .line 199
    iget-object v5, v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v5, v5, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v5, p0, Lenw;->b:Leno;

    invoke-static {v5}, Leno;->d(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lenw;->b:Leno;

    invoke-static {v5}, Leno;->d(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v5

    iget-object v5, v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lenw;->b:Leno;

    invoke-static {v5}, Leno;->d(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v5

    iget-object v5, v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v5, v5, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lenw;->b:Leno;

    invoke-static {v5}, Leno;->d(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v5

    iget-object v5, v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v5, v5, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    iget-object v6, v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v6, v6, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 208
    :cond_2
    iget-object v5, p0, Lenw;->b:Leno;

    iget-object v6, v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v6, v6, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    invoke-static {v5, v6}, Leno;->a(Leno;Ljava/lang/String;)V

    .line 209
    iget-object v5, p0, Lenw;->b:Leno;

    new-instance v6, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    iget-object v7, p0, Lenw;->b:Leno;

    invoke-static {v7}, Leno;->d(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)V

    invoke-virtual {v6}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v6

    invoke-static {v5, v6}, Leno;->c(Leno;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 210
    iget-object v5, p0, Lenw;->b:Leno;

    invoke-virtual {v4}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v6

    invoke-static {v5, v6}, Leno;->a(Leno;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 211
    sget-object v5, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;->PAGE:Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    invoke-virtual {v3, v5}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->type(Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->view(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;

    move-result-object v5

    new-instance v6, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    iget-object v7, p0, Lenw;->b:Leno;

    invoke-static {v7}, Leno;->g(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)V

    invoke-virtual {v6}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->from_page(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;

    move-result-object v5

    new-instance v6, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    iget-object v7, p0, Lenw;->b:Leno;

    invoke-static {v7}, Leno;->f(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)V

    invoke-virtual {v6}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->refer_click(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;

    move-result-object v5

    new-instance v6, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    iget-object v7, p0, Lenw;->b:Leno;

    invoke-static {v7}, Leno;->e(Leno;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)V

    invoke-virtual {v6}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->from_click(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;

    .line 216
    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Builder;->build()Lcom/wandoujia/logv3/model/packages/ShowEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->show_event(Lcom/wandoujia/logv3/model/packages/ShowEvent;)Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;

    .line 217
    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/EventPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/EventPackage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->event_package(Lcom/wandoujia/logv3/model/packages/EventPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 218
    iget-object v0, v0, Leoc;->b:Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 219
    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->extra_package(Lcom/wandoujia/logv3/model/packages/ExtraPackage;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    .line 220
    iget-object v0, p0, Lenw;->b:Leno;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->real_time(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Leno;->a(Leno;Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V

    .line 222
    const-class v0, Leno;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Page Show] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v1, v1, Lcom/wandoujia/logv3/model/packages/UrlPackage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 224
    :catch_0
    move-exception v0

    invoke-static {v0}, Leod;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
