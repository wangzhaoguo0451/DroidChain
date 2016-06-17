.class public final Lemz;
.super Ljava/lang/Object;
.source "LogReporter.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lavp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lavj;->a(Landroid/content/Context;)Lavj;

    move-result-object v0

    .line 41
    iput-object p3, p0, Lemz;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, p2}, Lavj;->a(Ljava/lang/String;)Lavp;

    move-result-object v0

    iput-object v0, p0, Lemz;->d:Lavp;

    .line 44
    iget-object v0, p0, Lemz;->d:Lavp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lavp;->a:Z

    .line 45
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lemz;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lemz;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 229
    :cond_0
    return-object p1
.end method

.method private a(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Lcom/wandoujia/logv3/model/packages/ExtraPackage;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 122
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->module:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->SHARE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    if-ne v0, v1, :cond_3

    .line 133
    new-instance v0, Lavn;

    invoke-direct {v0}, Lavn;-><init>()V

    .line 134
    iget-object v1, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->name:Ljava/lang/String;

    const-string v2, "&sn"

    invoke-virtual {v0, v2, v1}, Lavn;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    const-string v1, "share"

    const-string v2, "&sa"

    invoke-virtual {v0, v2, v1}, Lavn;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    .line 136
    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    iget-object v1, v1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->identity:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p2, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->content_package:Lcom/wandoujia/logv3/model/packages/ContentPackage;

    iget-object v1, v1, Lcom/wandoujia/logv3/model/packages/ContentPackage;->identity:Ljava/lang/String;

    const-string v2, "&st"

    invoke-virtual {v0, v2, v1}, Lavn;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    .line 141
    :cond_2
    iget-object v1, p0, Lemz;->d:Lavp;

    invoke-virtual {v0}, Lavn;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lavp;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 144
    :cond_3
    new-instance v0, Lavk;

    invoke-direct {v0}, Lavk;-><init>()V

    iget-object v1, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->module:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lavk;->a(Ljava/lang/String;)Lavk;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->action:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lavk;->b(Ljava/lang/String;)Lavk;

    move-result-object v0

    .line 147
    iget-object v1, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 148
    iget-object v1, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lavk;->c(Ljava/lang/String;)Lavk;

    .line 150
    :cond_4
    iget-object v1, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->value:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 151
    iget-object v1, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->value:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lavk;->a(J)Lavk;

    .line 153
    :cond_5
    iget-object v1, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v1, v1, Lcom/wandoujia/logv3/model/packages/UrlPackage;->normalized_url:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 155
    iget-object v1, p0, Lemz;->d:Lavp;

    iget-object v2, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v2, v2, Lcom/wandoujia/logv3/model/packages/UrlPackage;->normalized_url:Ljava/lang/String;

    invoke-direct {p0, v2}, Lemz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&cd"

    invoke-virtual {v1, v3, v2}, Lavp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_6
    iget-object v1, p0, Lemz;->d:Lavp;

    invoke-virtual {v0}, Lavk;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lavp;->a(Ljava/util/Map;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final onEvent(Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v2, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->event_package:Lcom/wandoujia/logv3/model/packages/EventPackage;

    .line 53
    if-nez v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v3, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->common_package:Lcom/wandoujia/logv3/model/packages/CommonPackage;

    .line 59
    if-nez v3, :cond_9

    move-object v0, v1

    .line 62
    :goto_1
    iget-object v4, p0, Lemz;->a:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lemz;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lemz;->a:Ljava/lang/String;

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    .line 64
    :cond_3
    iput-object v0, p0, Lemz;->a:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lemz;->d:Lavp;

    const-string v4, "&uid"

    iget-object v5, p0, Lemz;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lavp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_4
    if-eqz v3, :cond_5

    iget-object v0, v3, Lcom/wandoujia/logv3/model/packages/CommonPackage;->id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;

    if-eqz v0, :cond_5

    iget-object v0, v3, Lcom/wandoujia/logv3/model/packages/CommonPackage;->id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/IdPackage;->identity:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 70
    iget-object v0, p0, Lemz;->d:Lavp;

    iget-object v3, v3, Lcom/wandoujia/logv3/model/packages/CommonPackage;->id_package:Lcom/wandoujia/logv3/model/packages/IdPackage;

    iget-object v3, v3, Lcom/wandoujia/logv3/model/packages/IdPackage;->identity:Ljava/lang/String;

    const-string v4, "&cid"

    invoke-virtual {v0, v4, v3}, Lavp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_5
    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/EventPackage;->show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

    if-eqz v0, :cond_f

    .line 74
    sget-object v0, Lhhh;->a:[I

    iget-object v3, v2, Lcom/wandoujia/logv3/model/packages/EventPackage;->show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

    iget-object v3, v3, Lcom/wandoujia/logv3/model/packages/ShowEvent;->type:Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;

    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/ShowEvent$Type;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 76
    :pswitch_0
    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/EventPackage;->show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/ShowEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->url_package:Lcom/wandoujia/logv3/model/packages/UrlPackage;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/UrlPackage;->normalized_url:Ljava/lang/String;

    iget-object v2, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->common_package:Lcom/wandoujia/logv3/model/packages/CommonPackage;

    iget-object v3, p0, Lemz;->d:Lavp;

    invoke-direct {p0, v0}, Lemz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "&cd"

    invoke-virtual {v3, v4, v0}, Lavp;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lavm;

    invoke-direct {v3}, Lavm;-><init>()V

    if-nez v2, :cond_b

    move-object v0, v1

    :goto_2
    if-nez v0, :cond_c

    :goto_3
    if-nez v1, :cond_6

    iget-object v0, p0, Lemz;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    :cond_6
    if-eqz v1, :cond_7

    iget-object v0, p0, Lemz;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iput-object v1, p0, Lemz;->b:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lemz;->b:Ljava/lang/String;

    invoke-static {v0}, Lawi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0}, Lawi;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "&cc"

    const-string v0, "utm_content"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lavl;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    const-string v2, "&cm"

    const-string v0, "utm_medium"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lavl;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    const-string v2, "&cn"

    const-string v0, "utm_campaign"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lavl;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    const-string v2, "&cs"

    const-string v0, "utm_source"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lavl;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    const-string v2, "&ck"

    const-string v0, "utm_term"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lavl;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    const-string v2, "&ci"

    const-string v0, "utm_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lavl;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    const-string v2, "&anid"

    const-string v0, "anid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lavl;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    const-string v2, "&gclid"

    const-string v0, "gclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lavl;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    const-string v2, "&dclid"

    const-string v0, "dclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lavl;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    const-string v2, "&aclid"

    const-string v0, "aclid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lavl;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    const-string v2, "&gmob_t"

    const-string v0, "gmob_t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lavl;->a(Ljava/lang/String;Ljava/lang/String;)Lavl;

    :cond_8
    iget-object v0, p0, Lemz;->d:Lavp;

    invoke-virtual {v3}, Lavm;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lavp;->a(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 59
    :cond_9
    iget-object v0, v3, Lcom/wandoujia/logv3/model/packages/CommonPackage;->account_package:Lcom/wandoujia/logv3/model/packages/AccountPackage;

    if-nez v0, :cond_a

    move-object v0, v1

    goto/16 :goto_1

    :cond_a
    iget-object v0, v3, Lcom/wandoujia/logv3/model/packages/CommonPackage;->account_package:Lcom/wandoujia/logv3/model/packages/AccountPackage;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/AccountPackage;->uid:Ljava/lang/String;

    goto/16 :goto_1

    .line 76
    :cond_b
    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/CommonPackage;->launch_source_package:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    goto/16 :goto_2

    :cond_c
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "wdj"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "com.wandoujia"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "utm_source"

    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    if-eqz v2, :cond_d

    const-string v2, "utm_medium"

    iget-object v4, v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    invoke-virtual {v4}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_d
    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->keyword:Ljava/lang/String;

    if-eqz v2, :cond_e

    const-string v2, "utm_campaign"

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_e
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 80
    :pswitch_1
    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/EventPackage;->show_event:Lcom/wandoujia/logv3/model/packages/ShowEvent;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/ShowEvent;->view:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v1, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_status:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lhdn;->i()Lhdn;

    move-result-object v0

    invoke-virtual {v0}, Lhdn;->f()Lapw;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage;->card_package:Lcom/wandoujia/logv3/model/packages/CardPackage;

    iget-object v1, v1, Lcom/wandoujia/logv3/model/packages/CardPackage;->sub_status:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapw;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Lalb;

    goto/16 :goto_0

    .line 85
    :cond_f
    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/EventPackage;->click_event:Lcom/wandoujia/logv3/model/packages/ClickEvent;

    if-eqz v0, :cond_10

    .line 86
    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/EventPackage;->click_event:Lcom/wandoujia/logv3/model/packages/ClickEvent;

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/ClickEvent;->click:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v1, p1, Lcom/wandoujia/logv3/model/packages/LogReportEvent$Builder;->extra_package:Lcom/wandoujia/logv3/model/packages/ExtraPackage;

    invoke-direct {p0, v0, v1}, Lemz;->a(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Lcom/wandoujia/logv3/model/packages/ExtraPackage;)V

    goto/16 :goto_0

    .line 87
    :cond_10
    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/EventPackage;->task_event:Lcom/wandoujia/logv3/model/packages/TaskEvent;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, v2, Lcom/wandoujia/logv3/model/packages/EventPackage;->task_event:Lcom/wandoujia/logv3/model/packages/TaskEvent;

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->status:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->status:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->START:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    if-eq v2, v3, :cond_0

    :cond_11
    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v2, v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->module:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->VIEW_EVENT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    if-ne v2, v3, :cond_12

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    invoke-direct {p0, v0, v1}, Lemz;->a(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Lcom/wandoujia/logv3/model/packages/ExtraPackage;)V

    goto/16 :goto_0

    :cond_12
    iget-object v1, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SSO:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    if-eq v1, v2, :cond_13

    iget-object v1, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->LOGIN_IN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    if-eq v1, v2, :cond_13

    iget-object v1, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SIGN_UP:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    if-eq v1, v2, :cond_13

    iget-object v1, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->NOTIFICATION_CLICK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    if-ne v1, v2, :cond_0

    :cond_13
    new-instance v1, Lavk;

    invoke-direct {v1}, Lavk;-><init>()V

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->view_log_package:Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    iget-object v2, v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage;->module:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lavk;->a(Ljava/lang/String;)Lavk;

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->LOGIN_IN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    if-ne v2, v3, :cond_16

    const-string v2, "signin"

    invoke-virtual {v1, v2}, Lavk;->b(Ljava/lang/String;)Lavk;

    :goto_4
    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SSO:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    if-ne v2, v3, :cond_18

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result_info:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result_info:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lavk;->c(Ljava/lang/String;)Lavk;

    :cond_14
    :goto_5
    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->effect_num:Ljava/lang/Long;

    if-eqz v2, :cond_15

    iget-object v0, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->effect_num:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lavk;->a(J)Lavk;

    :cond_15
    iget-object v0, p0, Lemz;->d:Lavp;

    invoke-virtual {v1}, Lavk;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lavp;->a(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_16
    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SIGN_UP:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    if-ne v2, v3, :cond_17

    const-string v2, "signup"

    invoke-virtual {v1, v2}, Lavk;->b(Ljava/lang/String;)Lavk;

    goto :goto_4

    :cond_17
    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lavk;->b(Ljava/lang/String;)Lavk;

    goto :goto_4

    :cond_18
    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->LOGIN_IN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    if-ne v2, v3, :cond_19

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lavk;->c(Ljava/lang/String;)Lavk;

    goto :goto_5

    :cond_19
    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->action:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->SIGN_UP:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    if-ne v2, v3, :cond_1a

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lavk;->c(Ljava/lang/String;)Lavk;

    goto :goto_5

    :cond_1a
    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lavk;->c(Ljava/lang/String;)Lavk;

    goto :goto_5

    :cond_1b
    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result_info:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/wandoujia/logv3/model/packages/TaskEvent;->result_info:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lavk;->c(Ljava/lang/String;)Lavk;

    goto/16 :goto_5

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
