.class public Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "DetailActivity.java"

# interfaces
.implements Lhia;


# instance fields
.field private a:I

.field private b:Leqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/wandoujia/ripple_framework/model/DetailInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->a:I

    return-void
.end method

.method private static a(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v0, -0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/wandoujia/ripple_framework/model/Model;)Leqw;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ")",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lhhx;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ripple://detail/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lhhx;-><init>(Lcom/wandoujia/ripple_framework/model/Model;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x106

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 153
    const-string v1, "apps"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "apps"

    invoke-static {p1, v1}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 156
    if-nez v1, :cond_2

    .line 177
    :cond_1
    :goto_0
    return v0

    .line 159
    :cond_2
    new-instance v0, Lcom/wandoujia/api/proto/AppDetail$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/AppDetail$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/AppDetail$Builder;->package_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/AppDetail$Builder;->build()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/api/proto/Detail$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Detail$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    new-instance v4, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v4, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->a(Lcom/wandoujia/ripple_framework/model/Model;)Leqw;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->b:Leqw;

    new-instance v1, Lcom/wandoujia/ripple_framework/model/DetailInfo;

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->b:Leqw;

    invoke-virtual {v0}, Leqw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/wandoujia/ripple_framework/model/DetailInfo;-><init>(Ljava/lang/String;Landroid/view/View;JI)V

    iput-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->c:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    move v0, v7

    .line 160
    goto :goto_0

    .line 161
    :cond_3
    const-string v1, "items"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "items"

    invoke-static {p1, v1}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->a(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    const-string v1, "article"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_1

    .line 170
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->FEED:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->FEED:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    new-instance v4, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v4, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->a(Lcom/wandoujia/ripple_framework/model/Model;)Leqw;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->b:Leqw;

    new-instance v1, Lcom/wandoujia/ripple_framework/model/DetailInfo;

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->b:Leqw;

    invoke-virtual {v0}, Leqw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/wandoujia/ripple_framework/model/DetailInfo;-><init>(Ljava/lang/String;Landroid/view/View;JI)V

    iput-object v1, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->c:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    move v0, v7

    .line 175
    goto/16 :goto_0

    .line 172
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method protected customSystemTintBar()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->finish()V

    .line 238
    invoke-virtual {p0, v0, v0}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->overridePendingTransition(II)V

    .line 239
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    new-instance v2, Lhjw;

    invoke-direct {v2, p0}, Lhjw;-><init>(Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;)V

    invoke-virtual {v0, v2}, Ls;->a(Lt;)V

    .line 66
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->finish()V

    .line 70
    :cond_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v0, "view_list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lham;->f:Lham;

    const-string v2, "holder"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhz;

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "object"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->a:I

    iget v2, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->a:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->a:I

    invoke-virtual {v0, v2}, Lhhz;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqw;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->b:Leqw;

    :cond_4
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "detail"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/DetailInfo;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->c:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    :cond_5
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->b:Leqw;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->c:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    if-nez v0, :cond_7

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->b:Leqw;

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->addList(Leqw;)Leqw;

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->c:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->b:Leqw;

    invoke-virtual {v2}, Leqw;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->c:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/DetailInfo;->a()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lham;->f:Lham;

    const-string v2, "component"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhho;

    if-nez v0, :cond_9

    move v0, v1

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;

    invoke-direct {v0}, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "detail"

    iget-object v3, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->c:Lcom/wandoujia/ripple_framework/model/DetailInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/ripple/fragment/DetailPagerFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lag;->a(Ljava/lang/String;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onDestroy()V

    .line 75
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    iget v0, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->a:I

    if-ltz v0, :cond_0

    .line 87
    sget-object v0, Lham;->f:Lham;

    const-string v1, "holder"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhz;

    iget v1, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->a:I

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->b:Leqw;

    if-ltz v1, :cond_0

    iget-object v0, v0, Lhhz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 90
    :cond_0
    return-void
.end method
