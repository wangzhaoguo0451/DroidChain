.class public Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;
.super Lcom/wandoujia/jupiter/fragment/ListFragment;
.source "AppUpgradeFragment.java"


# static fields
.field private static final d:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;


# instance fields
.field private e:Landroid/view/View;

.field private final q:Lcom/wandoujia/appmanager/LocalAppChangedListener;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;

.field private u:Lcom/wandoujia/jupiter/view/AutoInstallCardView;

.field private v:Lert;

.field private w:Lexf;

.field private x:Lhgc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sput-object v0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->d:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    .line 92
    new-instance v0, Ldhj;

    invoke-direct {v0, p0}, Ldhj;-><init>(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->q:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 416
    new-instance v0, Lhgc;

    invoke-direct {v0, p0}, Lhgc;-><init>(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->x:Lhgc;

    return-void
.end method

.method public static a(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/ripple_framework/model/Model;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 605
    new-instance v0, Lcom/wandoujia/api/proto/DownloadUrl$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/DownloadUrl$Builder;-><init>()V

    .line 606
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/DownloadUrl$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/DownloadUrl$Builder;

    .line 609
    :cond_0
    new-instance v1, Lcom/wandoujia/api/proto/ApkDetail$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/ApkDetail$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getSize()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->bytes_(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_code(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->md5(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/DownloadUrl$Builder;->build()Lcom/wandoujia/api/proto/DownloadUrl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->download_url(Lcom/wandoujia/api/proto/DownloadUrl;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->build()Lcom/wandoujia/api/proto/ApkDetail;

    move-result-object v0

    .line 616
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 617
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v0, Lcom/wandoujia/api/proto/AppDetail$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/AppDetail$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/AppDetail$Builder;->apk(Ljava/util/List;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/AppDetail$Builder;->package_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/AppDetail$Builder;->build()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    .line 622
    new-instance v1, Lcom/wandoujia/api/proto/Detail$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Detail$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v0

    .line 624
    new-instance v1, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wdj://apps/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v1

    .line 626
    new-instance v2, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->d:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->template(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->action(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    .line 634
    new-instance v1, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v1, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    .line 635
    return-object v1
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;Lexf;)Lexf;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->w:Lexf;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->g()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;Lcom/wandoujia/ripple_framework/view/StatefulButton;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->p:Lhaz;

    invoke-virtual {v0}, Lhaz;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->n:Leqw;

    check-cast v0, Ldcc;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ldcc;->a(Ljava/util/List;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)Lexf;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->w:Lexf;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->v:Lert;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->v:Lert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lert;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->p:Lhaz;

    invoke-virtual {v0}, Lhaz;->b()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ldcc;

    const-string v1, "app_upgrade"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldcc;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->a(Leqw;)V

    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)Lcom/wandoujia/jupiter/view/AutoInstallCardView;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->u:Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->p()Ljava/util/List;

    move-result-object v1

    .line 269
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->n:Leqw;

    check-cast v0, Ldcc;

    invoke-virtual {v0, v1}, Ldcc;->a(Ljava/util/List;)V

    .line 270
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->r()V

    .line 271
    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->u:Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v4, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v5, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->UPGRADE_APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Ldho;

    invoke-direct {v0, p0, v2, v1}, Ldho;-><init>(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private p()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 482
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->i()Ljava/util/List;

    move-result-object v2

    .line 485
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 488
    new-instance v0, Lcqg;

    invoke-direct {v0}, Lcqg;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 491
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 492
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/library/activity/LibActivity;

    iget-object v3, v0, Lcom/wandoujia/jupiter/library/activity/LibActivity;->b:Ljava/lang/String;

    .line 493
    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 495
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 497
    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->UPGRADE_APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-static {v0, v3}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->a(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 493
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 500
    :cond_4
    new-instance v0, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->d:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->UPGRADE_APP_DIVIDER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->template(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    .line 504
    new-instance v2, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v2, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    .line 505
    new-instance v0, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v3, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->d:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->END:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->template(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    .line 509
    new-instance v3, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v3, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    .line 510
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->q()Ljava/util/List;

    move-result-object v0

    .line 511
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 512
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 514
    :cond_5
    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 515
    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 516
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_6
    return-object v1

    :cond_7
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private q()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->k()Ljava/util/List;

    move-result-object v0

    .line 530
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 531
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 532
    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->IGNORE_UPGRADE_APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-static {v0, v3}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->a(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    :cond_0
    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 537
    :goto_1
    if-eqz v0, :cond_1

    .line 538
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 541
    :cond_1
    return-object v1

    .line 536
    :cond_2
    new-instance v0, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->d:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    const v2, 0x7f0e0371

    invoke-virtual {p0, v2}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->UPGRADE_APP_DIVIDER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->template(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v2

    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v0, v2}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    goto :goto_1
.end method

.method private r()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/16 v5, 0x8

    const/4 v8, 0x0

    .line 545
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 546
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v7

    .line 547
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->i()Ljava/util/List;

    move-result-object v1

    .line 550
    sget-object v0, Lham;->f:Lham;

    const-string v4, "app"

    invoke-virtual {v0, v4}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 555
    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 588
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 564
    const v0, 0x7f0e05d0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v7, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 569
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v4, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 570
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v9

    .line 571
    invoke-virtual {v9}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->isPatchUpgradable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getPatchSize()J

    move-result-wide v0

    :goto_2
    add-long/2addr v0, v2

    .line 573
    invoke-virtual {v9}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullSize()J

    move-result-wide v2

    add-long/2addr v2, v4

    move-wide v4, v2

    move-wide v2, v0

    .line 574
    goto :goto_1

    .line 571
    :cond_1
    invoke-virtual {v9}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullSize()J

    move-result-wide v0

    goto :goto_2

    .line 576
    :cond_2
    const v0, 0x7f0e05d1

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 577
    const-string v0, " "

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 578
    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 579
    long-to-double v0, v4

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 581
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 582
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    const/16 v5, 0x11

    invoke-virtual {v6, v4, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 584
    const-string v0, " "

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 586
    :cond_3
    long-to-double v0, v2

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 587
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ldcc;

    const-string v1, "app_upgrade"

    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->p()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldcc;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;",
            "Leqz",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->n:Leqw;

    invoke-static {v0, v1, p2}, Ldxa;->a(Landroid/content/Context;Leqw;Ljava/lang/Exception;)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 260
    :cond_0
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 241
    const v0, 0x7f030139

    return v0
.end method

.method protected final e()Lhaw;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Ldcm;

    invoke-direct {v0}, Ldcm;-><init>()V

    return-object v0
.end method

.method protected final synthetic f()Lhaz;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ldcm;

    invoke-direct {v0}, Ldcm;-><init>()V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->g()V

    .line 149
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "view_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;

    invoke-direct {v0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;-><init>()V

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->swipeRefresh:Z

    .line 141
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "view_config"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 143
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->x:Lhgc;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/installer/install/autoinstall/AccessibilityDispatcher;->b(Lhgc;)V

    .line 641
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->w:Lexf;

    invoke-static {v0}, Lewx;->b(Lexf;)Z

    .line 642
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onDestroyView()V

    .line 643
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 154
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const v1, 0x7f030182

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyLayout(I)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    new-instance v1, Ldhk;

    invoke-direct {v1, p0}, Ldhk;-><init>(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyViewRender(Lhmx;)V

    .line 156
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->q:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 159
    const v0, 0x7f0c0364

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->t:Landroid/view/View;

    .line 160
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0107

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 161
    const v1, 0x7f030136

    invoke-static {v0, v1}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->e:Landroid/view/View;

    .line 163
    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->e:Landroid/view/View;

    const v1, 0x7f0c0360

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->r:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->e:Landroid/view/View;

    const v1, 0x7f0c0361

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->s:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->s:Landroid/widget/TextView;

    new-instance v1, Ldhq;

    invoke-direct {v1, p0}, Ldhq;-><init>(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->r()V

    .line 170
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lhgd;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->r()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lhgd;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->u:Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->u:Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->u:Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    new-instance v1, Ldhs;

    invoke-direct {v1, p0}, Ldhs;-><init>(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->setListener(Ldww;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->x:Lhgc;

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/installer/install/autoinstall/AccessibilityDispatcher;->a(Lhgc;)V

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->u:Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->CARD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v5, "system://settings/auto_install"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    :cond_0
    new-instance v0, Ldht;

    invoke-direct {v0, p0}, Ldht;-><init>(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->v:Lert;

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getAdapter()Luh;

    move-result-object v0

    check-cast v0, Ldcm;

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->v:Lert;

    invoke-virtual {v0, v1}, Ldcm;->a(Lert;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getAdapter()Luh;

    move-result-object v0

    iget-object v0, v0, Luh;->a:Lui;

    invoke-virtual {v0}, Lui;->a()V

    .line 172
    :cond_1
    return-void

    .line 170
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
