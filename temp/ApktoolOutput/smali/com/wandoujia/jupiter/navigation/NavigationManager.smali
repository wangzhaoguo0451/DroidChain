.class public final Lcom/wandoujia/jupiter/navigation/NavigationManager;
.super Lhhy;
.source "NavigationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lhhy;-><init>()V

    .line 66
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    const-string v0, "wdj://explore/homepage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 92
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 94
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 95
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    :cond_0
    const v0, 0x4008000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    :try_start_0
    const-string v1, "wdj://search/result"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 271
    const-string v2, "extra_query"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v2, "source"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 274
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 275
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 276
    instance-of v1, p0, Lcom/wandoujia/jupiter/search/activity/SearchQueryHistoryActivity;

    if-eqz v1, :cond_0

    .line 277
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 210
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/wandoujia/jupiter/search/activity/InAppCampaignActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 212
    return-void

    .line 210
    :cond_1
    iget-object v4, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    if-eqz v4, :cond_3

    :goto_1
    if-eqz p0, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/wandoujia/api/proto/ApkDetail$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/ApkDetail$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v6, Lcom/wandoujia/api/proto/DownloadUrl$Builder;

    invoke-direct {v6}, Lcom/wandoujia/api/proto/DownloadUrl$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iget-object v0, v0, Lcom/wandoujia/api/proto/DownloadUrl;->url:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/wandoujia/api/proto/DownloadUrl$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/DownloadUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/DownloadUrl$Builder;->build()Lcom/wandoujia/api/proto/DownloadUrl;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->download_url(Lcom/wandoujia/api/proto/DownloadUrl;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->version_code:Ljava/lang/Integer;

    invoke-virtual {v6, v0}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_code(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->version_name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->md5:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->md5(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/ApkDetail;

    iget-object v0, v0, Lcom/wandoujia/api/proto/ApkDetail;->bytes_:Ljava/lang/Integer;

    invoke-virtual {v6, v0}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->bytes_(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    :cond_2
    invoke-virtual {v5}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->build()Lcom/wandoujia/api/proto/ApkDetail;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v5}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v0, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    new-instance v5, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    iget-object v6, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v6, v6, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v6, v6, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Action$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "wdj://apps/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v7

    iget-object v7, v7, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->action(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v5, v5, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v5, v5, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v5, v5, Lcom/wandoujia/api/proto/Entity$Builder;->description:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->description(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v5, v5, Lcom/wandoujia/api/proto/Entity;->tag_line:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->tag_line(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->icon(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    new-instance v5, Lcom/wandoujia/api/proto/Detail$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/Detail$Builder;-><init>()V

    new-instance v6, Lcom/wandoujia/api/proto/AppDetail$Builder;

    invoke-direct {v6}, Lcom/wandoujia/api/proto/AppDetail$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v7

    iget-object v7, v7, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/wandoujia/api/proto/AppDetail$Builder;->package_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/wandoujia/api/proto/AppDetail$Builder;->apk(Ljava/util/List;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v6

    iget-object v6, v6, Lcom/wandoujia/api/proto/AppDetail;->installed_count_str:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/wandoujia/api/proto/AppDetail$Builder;->installed_count_str(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/AppDetail$Builder;->build()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v4

    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v4}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object p0, p0, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    goto/16 :goto_1

    :cond_4
    move-object p0, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iget-object v0, p3, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->FEED:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v1, :cond_1

    .line 330
    invoke-static {p3}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->a(Lcom/wandoujia/ripple_framework/model/Model;)Leqw;

    move-result-object v2

    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;

    invoke-direct {v7, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lham;->f:Lham;

    const-string v1, "holder"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhz;

    const-string v1, "object"

    invoke-virtual {v0, v2}, Lhhz;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "detail"

    new-instance v1, Lcom/wandoujia/ripple_framework/model/DetailInfo;

    invoke-virtual {v2}, Leqw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v4

    move-object v3, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/wandoujia/ripple_framework/model/DetailInfo;-><init>(Ljava/lang/String;Landroid/view/View;JI)V

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "view_list"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x1000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-virtual {p3}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p2, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    invoke-static {v0}, Ld;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/wandoujia/jupiter/activity/CommonActivity;

    if-eqz p2, :cond_3

    const-string v0, "[Page Show]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Go to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p2, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    instance-of v0, p1, Lhia;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lhia;

    invoke-interface {v0, v3}, Lhia;->navigateTo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0, p1, v3, v1}, Lhhy;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "page_api_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "page_intent_uri"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_2

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    .line 112
    iget-object v0, v1, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0, p1, v1}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    .line 127
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 119
    const-string v3, "wdj://apps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "wdj://games"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 123
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0c0023

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wdj://apps/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v0, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 164
    if-nez v1, :cond_1

    .line 195
    :goto_1
    return-void

    .line 161
    :cond_0
    iget-object v0, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    goto :goto_0

    .line 168
    :cond_1
    if-eqz p3, :cond_3

    .line 169
    invoke-virtual {p3, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 170
    if-nez v0, :cond_2

    .line 171
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 173
    :cond_2
    new-instance v2, Lcom/wandoujia/ripple_framework/view/Anchor;

    invoke-direct {v2, p3, v0}, Lcom/wandoujia/ripple_framework/view/Anchor;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 174
    iget v3, v2, Lcom/wandoujia/ripple_framework/view/Anchor;->c:I

    if-lez v3, :cond_3

    .line 175
    const-string v3, "anchor"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    if-eqz p2, :cond_3

    .line 177
    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    if-eqz v0, :cond_3

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 179
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_3

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 181
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 182
    sget-object v0, Lham;->f:Lham;

    const-string v3, "holder"

    invoke-virtual {v0, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhz;

    .line 184
    invoke-virtual {v0, v2}, Lhhz;->a(Ljava/lang/Object;)I

    move-result v0

    .line 185
    const-string v2, "iconBitmapKey"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    :cond_3
    :goto_2
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 189
    :cond_4
    const-string v0, "iconUrl"

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wdj://apps/detail/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    .line 87
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    invoke-super {p0, p1, p2, p3}, Lhhy;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 375
    if-nez v0, :cond_0

    const-string v1, "ripple"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "com.wandoujia"

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 381
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "com.wandoujia.phoenix2"

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    :cond_1
    return-object v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 198
    new-instance v0, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    .line 199
    const-string v1, "wdj://follow/categories"

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    .line 200
    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    .line 201
    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v0, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    .line 139
    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 143
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 144
    invoke-static {p1, v1}, Lcom/wandoujia/base/utils/IntentUtils;->canHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    const-string v1, "wdj://search/ias"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-static {p2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Lcom/wandoujia/ripple_framework/model/Model;)V

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {p2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Lcom/wandoujia/ripple_framework/model/Model;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/campaign/CampaignActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    const-string v1, "phoenix.intent.extra.URL"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 358
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 361
    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 366
    return-void
.end method
