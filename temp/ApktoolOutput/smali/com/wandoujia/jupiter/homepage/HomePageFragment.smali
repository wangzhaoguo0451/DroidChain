.class public Lcom/wandoujia/jupiter/homepage/HomePageFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "HomePageFragment.java"


# static fields
.field private static final b:Z

.field private static c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I


# instance fields
.field private final A:Ldfm;

.field private final B:Lhz;

.field public a:I

.field private i:Z

.field private j:I

.field private final k:Lcom/wandoujia/account/listener/IAccountListener;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

.field private r:Landroid/support/v4/view/ViewPager;

.field private s:Ldfn;

.field private t:Lhhv;

.field private u:Ldgb;

.field private v:Z

.field private w:Landroid/widget/TextView;

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Ldsk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    sput-boolean v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->b:Z

    .line 67
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->c:I

    .line 70
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0243

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->d:I

    .line 73
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->e:I

    .line 76
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->f:I

    .line 79
    sget v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->c:I

    sget v1, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->f:I

    sub-int v1, v0, v1

    sget-boolean v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->b:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->d:I

    :goto_0
    sub-int v0, v1, v0

    sput v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->g:I

    .line 81
    const/high16 v0, 0x4220

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lj;->a(FLandroid/content/Context;)I

    move-result v0

    sput v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->h:I

    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->i:Z

    .line 87
    iput v1, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->j:I

    .line 89
    new-instance v0, Ldfz;

    invoke-direct {v0, p0, v1}, Ldfz;-><init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;B)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->k:Lcom/wandoujia/account/listener/IAccountListener;

    .line 102
    iput-boolean v1, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->v:Z

    .line 105
    iput-boolean v1, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->x:Z

    .line 433
    new-instance v0, Ldft;

    invoke-direct {v0, p0}, Ldft;-><init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->A:Ldfm;

    .line 492
    new-instance v0, Ldfu;

    invoke-direct {v0, p0}, Ldfu;-><init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->B:Lhz;

    .line 536
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->r:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/homepage/HomePageFragment;I)Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 61
    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->values()[Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    #getter for: Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->access$000(Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v6, v6, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v6, v6, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    #getter for: Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->searchTypeForHint:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;
    invoke-static {v4}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->access$300(Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;)Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    goto :goto_0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/homepage/HomePageFragment;Ldgb;)Ldgb;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->u:Ldgb;

    return-object p1
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 61
    return-object p0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/homepage/HomePageFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->x:Z

    return p1
.end method

.method public static synthetic b()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->h:I

    return v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/homepage/HomePageFragment;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->j:I

    return v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldfn;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->s:Ldfn;

    return-object v0
.end method

.method public static synthetic c()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->g:I

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/homepage/HomePageFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput p1, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a:I

    return p1
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Lhhv;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->t:Lhhv;

    return-object v0
.end method

.method private d()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3c

    const/4 v1, 0x0

    .line 198
    new-instance v2, Ldcb;

    const-string v3, "http://apis.wandoujia.com/five/v1/index?format=proto"

    sget-object v0, Ldca;->a:Ldca;

    const-string v4, "local_feed"

    invoke-virtual {v0, v4}, Ldca;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Lcom/wandoujia/account/dto/Role;->ROLE_SUBSCRIBER:Lcom/wandoujia/account/dto/Role;

    invoke-static {v5}, Lchv;->a(Lcom/wandoujia/account/dto/Role;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "isFollowUser"

    const-string v6, "true"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v5, "launchedCount"

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "launchedAge"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->c()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    const-wide/16 v8, 0x18

    div-long/2addr v6, v8

    div-long/2addr v6, v10

    div-long/2addr v6, v10

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v0, v6

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "deviceModel"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_1
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "deviceBrand"

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    :goto_2
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "deviceType"

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->isDeviceTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "tablet"

    :goto_3
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resolution"

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/wandoujia/base/utils/SystemUtil;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceCPU"

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->getCPU()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "netStatus"

    if-eqz v0, :cond_5

    :goto_4
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "apiVersion"

    const-string v5, "1"

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Ldcb;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "launchedCount"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v3, "launchedAge"

    aput-object v3, v0, v1

    iput-object v0, v2, Lhhv;->i:[Ljava/lang/String;

    iput-object v2, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->t:Lhhv;

    .line 199
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->t:Lhhv;

    new-instance v1, Ldfq;

    invoke-direct {v1, p0}, Ldfq;-><init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V

    invoke-virtual {v0, v1}, Lhhv;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    .line 222
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->t:Lhhv;

    invoke-virtual {v0}, Lhhv;->g()V

    .line 223
    return-void

    :cond_1
    move v0, v1

    .line 198
    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    const-string v0, "phone"

    goto :goto_3

    :cond_5
    const-string v0, ""

    goto :goto_4
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/homepage/HomePageFragment;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xb

    const/4 v1, 0x0

    .line 61
    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->m:Landroid/view/View;

    int-to-float v2, p1

    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    sget-boolean v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->b:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->d:I

    sget v2, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->e:I

    sub-int/2addr v0, v2

    mul-int/2addr v0, p1

    int-to-float v0, v0

    const/high16 v2, 0x3f80

    mul-float/2addr v0, v2

    sget v2, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->g:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->w:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->o:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->p:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    :cond_0
    int-to-float v0, p1

    const/high16 v2, -0x4080

    mul-float/2addr v0, v2

    sget v2, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->g:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->l:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    :cond_1
    iget-object v2, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->l:Landroid/view/View;

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->g:I

    neg-int v0, v0

    if-gt p1, v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->i:Z

    iput v1, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->j:I

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->v:Z

    return v0
.end method

.method private e()Ljava/util/List;
    .locals 2
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
    .line 289
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->t:Lhhv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->t:Lhhv;

    iget-object v0, v0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->t:Lhhv;

    iget-object v0, v0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    .line 292
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public static synthetic e(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->t:Lhhv;

    iget-object v0, v0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->s:Ldfn;

    if-nez v0, :cond_2

    new-instance v0, Ldfn;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->getChildFragmentManager()Ls;

    move-result-object v1

    sget v2, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->c:I

    invoke-direct {v0, v1, v2}, Ldfn;-><init>(Ls;I)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->s:Ldfn;

    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->r:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->s:Ldfn;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgf;)V

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->s:Ldfn;

    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->e()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ldfn;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->s:Ldfn;

    iget-object v0, v0, Lgf;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->q:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->r:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->q:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->B:Lhz;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;->setOnPageChangeListener(Lhw;)V

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->v:Z

    goto :goto_0
.end method

.method public static synthetic f(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Lhz;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->B:Lhz;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->v:Z

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->s:Ldfn;

    .line 372
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->d()V

    .line 373
    return-void
.end method

.method public static synthetic g(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldsk;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->z:Ldsk;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic i(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->f()V

    return-void
.end method

.method public static synthetic j(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->x:Z

    return v0
.end method

.method public static synthetic k(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->i:Z

    return v0
.end method

.method public static synthetic l(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->j:I

    return v0
.end method

.method public static synthetic m(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->i:Z

    return v0
.end method

.method public static synthetic n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->u:Ldgb;

    return-object v0
.end method

.method public static synthetic o(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a:I

    return v0
.end method

.method public static synthetic p(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->j:I

    return v0
.end method

.method public static synthetic q(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic r(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldfm;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->A:Ldfm;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->r:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->t:Lhhv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->t:Lhhv;

    iget-object v0, v0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v1, v2

    .line 264
    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->t:Lhhv;

    iget-object v0, v0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_b

    move v3, v1

    move v1, v2

    .line 266
    :goto_2
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 267
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 268
    if-eqz v0, :cond_c

    iget-object v4, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v4, :cond_c

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v4, v0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->y:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_c

    .line 270
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->r:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 266
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_2

    .line 262
    :cond_4
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->e()Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DEFAULT_TAB:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v0, v4, :cond_3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 268
    :cond_5
    if-eqz v4, :cond_6

    if-nez v0, :cond_7

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    :try_start_1
    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_8

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_8
    const-string v5, "?"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_9

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_3

    :cond_a
    move v1, v3

    .line 276
    :cond_b
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->r:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 277
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->r:Landroid/support/v4/view/ViewPager;

    new-instance v2, Ldfr;

    invoke-direct {v2, p0, v1}, Ldfr;-><init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;I)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 284
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto :goto_4

    :cond_d
    move v1, v2

    goto/16 :goto_1
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v0, v0, Letz;->a:Lcmm;

    iget-object v1, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->k:Lcom/wandoujia/account/listener/IAccountListener;

    invoke-virtual {v0, v1}, Lcmm;->a(Lcom/wandoujia/account/listener/IAccountListener;)V

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    const v0, 0x7f03012b

    invoke-static {p2, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v0, v0, Letz;->a:Lcmm;

    iget-object v1, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->k:Lcom/wandoujia/account/listener/IAccountListener;

    invoke-virtual {v0, v1}, Lcmm;->b(Lcom/wandoujia/account/listener/IAccountListener;)V

    .line 119
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onDestroy()V

    .line 120
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onDestroyView()V

    .line 174
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->z:Ldsk;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->z:Ldsk;

    invoke-virtual {v0}, Ldsk;->a()V

    .line 179
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lhaq;)V
    .locals 2
    .parameter

    .prologue
    .line 357
    iget-object v0, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->HOMEPAGE_REFRESH:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->DROP_ALL_SUBSCRIPTION:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    iget-object v1, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->NEW_FOLLOW_USER:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    if-ne v0, v1, :cond_1

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->f()V

    .line 362
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_intent_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->y:Ljava/lang/String;

    .line 134
    :cond_0
    const v0, 0x7f0c0105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->m:Landroid/view/View;

    const v0, 0x7f0c034b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->l:Landroid/view/View;

    const v0, 0x7f0c010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->r:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0c0350

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->q:Lcom/wandoujia/ripple_framework/view/slidingtab/PagerSlidingTabStrip;

    const v0, 0x7f0c034d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->w:Landroid/widget/TextView;

    const v0, 0x7f0c034c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->p:Landroid/view/View;

    const v0, 0x7f0c034f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->o:Landroid/view/View;

    const v0, 0x7f0c034e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n:Landroid/view/View;

    new-instance v1, Ldfs;

    invoke-direct {v1, p0}, Ldfs;-><init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-direct {p0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->d()V

    .line 136
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->w:Landroid/widget/TextView;

    new-instance v1, Ldfo;

    invoke-direct {v1, p0}, Ldfo;-><init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v0, Ldsk;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->w:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ldsk;-><init>(Landroid/content/Context;Landroid/widget/TextView;Z)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->z:Ldsk;

    .line 152
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->z:Ldsk;

    sget-object v1, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->STARTPAGE:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-virtual {v0, v1}, Ldsk;->a(Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    .line 153
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->r:Landroid/support/v4/view/ViewPager;

    new-instance v1, Ldfp;

    invoke-direct {v1, p0}, Ldfp;-><init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Lhw;)V

    .line 169
    return-void
.end method
