.class public Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;
.super Lcom/wandoujia/jupiter/fragment/ListFragment;
.source "AppInstalledFragment.java"


# static fields
.field private static final d:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;


# instance fields
.field private e:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/ViewGroup;

.field private v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

.field private x:Lert;

.field private y:Lhjo;

.field private final z:Lcom/wandoujia/appmanager/LocalAppChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sput-object v0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->d:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    .line 106
    sget-object v0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;->TIME:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->w:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    .line 109
    new-instance v0, Ldgx;

    invoke-direct {v0, p0}, Ldgx;-><init>(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->z:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 520
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->p()V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)Lert;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->x:Lert;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)Lhjo;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->y:Lhjo;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->v:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic f(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 371
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getAdapter()Luh;

    move-result-object v0

    check-cast v0, Ldcm;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    .line 372
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->v:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->t:Landroid/widget/TextView;

    const v1, 0x7f0e03b9

    invoke-virtual {p0, v1}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->s:Landroid/widget/TextView;

    const v1, 0x7f0e03b7

    invoke-virtual {p0, v1}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->v:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->t:Landroid/widget/TextView;

    const v1, 0x7f0e03b5

    invoke-virtual {p0, v1}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 382
    new-instance v0, Ldcc;

    const-string v1, ""

    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->q()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldcc;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 383
    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->a(Leqw;)V

    .line 384
    return-void
.end method

.method private q()Ljava/util/List;
    .locals 10
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
    const-wide/16 v8, -0x1

    .line 387
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/AppManager;->d()Ljava/util/List;

    move-result-object v1

    .line 390
    sget-object v0, Ldhf;->a:[I

    iget-object v2, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->w:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    invoke-virtual {v2}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknown sort type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcqg;

    invoke-direct {v0}, Lcqg;-><init>()V

    :goto_0
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 391
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 392
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 393
    new-instance v3, Lcom/wandoujia/api/proto/ApkDetail$Builder;

    invoke-direct {v3}, Lcom/wandoujia/api/proto/ApkDetail$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getSize()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->bytes_(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->version_code(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getMD5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->md5(Ljava/lang/String;)Lcom/wandoujia/api/proto/ApkDetail$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/ApkDetail$Builder;->build()Lcom/wandoujia/api/proto/ApkDetail;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/wandoujia/api/proto/AppDetail$Builder;

    invoke-direct {v3}, Lcom/wandoujia/api/proto/AppDetail$Builder;-><init>()V

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/AppDetail$Builder;->apk(Ljava/util/List;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/AppDetail$Builder;->package_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/AppDetail$Builder;->build()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v3

    new-instance v4, Lcom/wandoujia/api/proto/Detail$Builder;

    invoke-direct {v4}, Lcom/wandoujia/api/proto/Detail$Builder;-><init>()V

    invoke-virtual {v4, v3}, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v3

    new-instance v4, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v4}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wdj://apps/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v4

    new-instance v5, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    sget-object v6, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->d:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v6}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v5, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->INSTALLED_APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v5}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->template(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->action(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    new-instance v3, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v3, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 390
    :pswitch_1
    new-instance v0, Lcqe;

    invoke-direct {v0}, Lcqe;-><init>()V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcqf;

    invoke-direct {v0}, Lcqf;-><init>()V

    goto/16 :goto_0

    .line 395
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 397
    const-string v4, "com.wandoujia.game_launcher"

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v5

    iget-object v5, v5, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 398
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 401
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 402
    new-instance v0, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->d:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->UPGRADE_APP_DIVIDER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->template(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    .line 406
    new-instance v1, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v1, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    .line 407
    new-instance v0, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    sget-object v3, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->d:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

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

    .line 411
    new-instance v3, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v3, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    .line 412
    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 413
    const/4 v0, 0x0

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 414
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :goto_3
    return-object v2

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->u:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 0
    .parameter

    .prologue
    .line 216
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
    .line 219
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 207
    const v0, 0x7f030131

    return v0
.end method

.method protected final e()Lhaw;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Ldcm;

    invoke-direct {v0}, Ldcm;-><init>()V

    return-object v0
.end method

.method protected final synthetic f()Lhaz;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ldcm;

    invoke-direct {v0}, Ldcm;-><init>()V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 195
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->p()V

    .line 196
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->setArguments(Landroid/os/Bundle;)V

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "view_config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;

    invoke-direct {v0}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;-><init>()V

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->swipeRefresh:Z

    .line 152
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "view_config"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 154
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onDestroy()V

    .line 201
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public onEvent(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->w:Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment$SortType;

    .line 302
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->p()V

    .line 303
    return-void
.end method

.method public onEventMainThread(Lhaq;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 306
    iget-object v0, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 308
    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 310
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->g()V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getAdapter()Luh;

    move-result-object v0

    check-cast v0, Ldcm;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 316
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 319
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->v:Ljava/util/Set;

    .line 320
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->g()V

    goto :goto_0

    .line 322
    :cond_3
    iget-object v0, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL_SELECT:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    instance-of v0, v0, Ldix;

    if-eqz v0, :cond_5

    .line 324
    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    check-cast v0, Ldix;

    .line 326
    iget-boolean v1, v0, Ldix;->b:Z

    if-eqz v1, :cond_4

    .line 327
    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->v:Ljava/util/Set;

    iget-object v0, v0, Ldix;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    :goto_2
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->g()V

    .line 332
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->v:Ljava/util/Set;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lhaq;

    sget-object v2, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lhaq;-><init>(Lcom/wandoujia/ripple_framework/EventBusManager$Type;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_4
    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->v:Ljava/util/Set;

    iget-object v0, v0, Ldix;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 337
    :cond_5
    iget-object v0, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->UNINSTALL_ALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    if-ne v0, v1, :cond_a

    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 338
    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 339
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getAdapter()Luh;

    move-result-object v0

    check-cast v0, Ldcm;

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    .line 340
    if-eqz v1, :cond_7

    .line 342
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 343
    iget-object v2, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->INSTALLED_APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v2, v3, :cond_6

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 346
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 347
    iget-object v2, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->v:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 351
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 352
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->b()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    goto :goto_4

    .line 354
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->v:Ljava/util/Set;

    .line 356
    :cond_9
    invoke-direct {p0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->g()V

    goto/16 :goto_0

    .line 357
    :cond_a
    iget-object v0, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->UNINSTALL_APP:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    if-ne v0, v1, :cond_0

    .line 359
    sget-object v0, Lham;->f:Lham;

    const-string v1, "app_task"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    .line 361
    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->v:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 362
    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 160
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const v2, 0x7f030182

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyLayout(I)V

    .line 161
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    new-instance v2, Ldgy;

    invoke-direct {v2}, Ldgy;-><init>()V

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyViewRender(Lhmx;)V

    .line 176
    sget-object v0, Lham;->f:Lham;

    const-string v2, "app"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/AppManager;

    iget-object v2, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->z:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v0, v2}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 178
    const v0, 0x7f0c0355

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->e:Landroid/widget/RelativeLayout;

    .line 179
    const v0, 0x7f0c0357

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->q:Landroid/widget/ImageView;

    .line 180
    const v0, 0x7f0c035b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->r:Landroid/view/View;

    .line 181
    const v0, 0x7f0c0359

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->s:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0c035a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->t:Landroid/widget/TextView;

    .line 183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->v:Ljava/util/Set;

    .line 184
    const v0, 0x7f0c0352

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->u:Landroid/view/ViewGroup;

    .line 185
    new-instance v0, Lerf;

    iget-object v2, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->u:Landroid/view/ViewGroup;

    invoke-direct {v0, v2}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v2, Ldja;

    invoke-direct {v2}, Ldja;-><init>()V

    invoke-virtual {v0, v1, v2, v1}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    .line 187
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lerf;->a(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->q:Landroid/widget/ImageView;

    new-instance v2, Ldhb;

    invoke-direct {v2}, Ldhb;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->t:Landroid/widget/TextView;

    new-instance v2, Ldhc;

    invoke-direct {v2, p0}, Ldhc;-><init>(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->r:Landroid/view/View;

    new-instance v2, Ldhd;

    invoke-direct {v2, p0}, Ldhd;-><init>(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Leha;->a()Leha;

    invoke-static {}, Leha;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    iget-object v2, v0, Lebl;->b:Ljava/util/List;

    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Leha;->a()Leha;

    const-string v1, "gl_guide_game_limit"

    invoke-static {v1}, Ld;->Q(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    const-string v1, "com.wandoujia.game_launcher"

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ledn;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/jupiter/view/OperationGuideCardView;

    move-result-object v0

    new-instance v1, Lhjo;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->getSettingButton()Lcom/wandoujia/ripple_framework/view/StatefulButton;

    move-result-object v2

    invoke-direct {v1, v2}, Lhjo;-><init>(Lcom/wandoujia/ripple_framework/view/StatefulButton;)V

    iput-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->y:Lhjo;

    new-instance v1, Ldwz;

    invoke-direct {v1, p0}, Ldwz;-><init>(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/view/OperationGuideCardView;->setListener(Ldwz;)V

    new-instance v1, Ldha;

    invoke-direct {v1, p0, v0}, Ldha;-><init>(Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;Lcom/wandoujia/jupiter/view/OperationGuideCardView;)V

    iput-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->x:Lert;

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getAdapter()Luh;

    move-result-object v0

    check-cast v0, Ldcm;

    iget-object v1, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->x:Lert;

    invoke-virtual {v0, v1}, Ldcm;->a(Lert;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/AppInstalledFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->getAdapter()Luh;

    move-result-object v0

    iget-object v0, v0, Luh;->a:Lui;

    invoke-virtual {v0}, Lui;->a()V

    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    const-string v3, "me_apps"

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->PAGE:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v5, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->OPEN:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    const-string v6, "show_gl_card"

    invoke-static {v3, v4, v5, v6}, Ld;->a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v3

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Ld;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void

    .line 189
    :cond_1
    iget-object v0, v0, Lebl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
