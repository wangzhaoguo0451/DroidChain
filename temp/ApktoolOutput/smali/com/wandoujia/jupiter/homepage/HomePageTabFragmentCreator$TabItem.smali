.class public final enum Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;
.super Ljava/lang/Enum;
.source "HomePageTabFragmentCreator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

.field public static final enum APP:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

.field public static final enum COMMON_CATEGORY:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

.field public static final enum FOLLOW_ONBOARD:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

.field public static final enum FOLLOW_TIMELINE:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

.field public static final enum GAME:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

.field public static final enum NUX:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

.field public static final enum START_PAGE:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

.field public static final enum WEB_VIEW:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;


# instance fields
.field private fragment:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private searchTypeForHint:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    const-string v1, "COMMON_CATEGORY"

    const-string v3, "wdj://categories"

    const-class v4, Lcom/wandoujia/jupiter/category/fragment/CategoryOverallFragment;

    const-string v5, "http://apis.wandoujia.com/five/v1/categories?format=proto"

    sget-object v6, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    sput-object v0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->COMMON_CATEGORY:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    .line 29
    new-instance v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    const-string v4, "START_PAGE"

    const-string v6, "wdj://explore"

    const-class v7, Lcom/wandoujia/jupiter/fragment/StartPageFragment;

    const-string v8, "http://apis.wandoujia.com/five/v1/startpages/%s?format=proto"

    sget-object v9, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->STARTPAGE:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    sput-object v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->START_PAGE:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    .line 31
    new-instance v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    const-string v4, "APP"

    const-string v6, "wdj://apps/explore"

    const-class v7, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;

    const-string v8, "http://apis.wandoujia.com/apps/v1/list/choices?format=proto"

    sget-object v9, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->APP:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    sput-object v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->APP:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    .line 33
    new-instance v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    const-string v4, "GAME"

    const-string v6, "wdj://games/explore"

    const-class v7, Lcom/wandoujia/jupiter/homepage/HomeScrollFragment;

    const-string v8, "http://apis.wandoujia.com/games/v1/list/choices?format=proto"

    sget-object v9, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->GAME:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    sput-object v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->GAME:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    .line 35
    new-instance v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    const-string v4, "FOLLOW_ONBOARD"

    const-string v6, "wdj://follow/onboard"

    const-class v7, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeOnBoardFragment;

    const-string v8, "http://apis.wandoujia.com/five/v1/follow/onboard?format=proto"

    sget-object v9, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    sput-object v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->FOLLOW_ONBOARD:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    .line 37
    new-instance v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    const-string v4, "FOLLOW_TIMELINE"

    const/4 v5, 0x5

    const-string v6, "wdj://follow"

    const-class v7, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;

    const-string v8, "http://apis.wandoujia.com/five/v1/follow/%s?format=proto"

    sget-object v9, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-direct/range {v3 .. v9}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    sput-object v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->FOLLOW_TIMELINE:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    .line 39
    new-instance v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    const-string v4, "WEB_VIEW"

    const/4 v5, 0x6

    const-string v6, "wdj://web"

    const-class v7, Lcom/wandoujia/jupiter/fragment/WebViewFragment;

    const-string v8, ""

    sget-object v9, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-direct/range {v3 .. v9}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    sput-object v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->WEB_VIEW:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    .line 41
    new-instance v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    const-string v4, "NUX"

    const/4 v5, 0x7

    const-string v6, "wdj://essential"

    const-class v7, Lcom/wandoujia/jupiter/fragment/NuxHomeFragment;

    const-string v8, "http://apis.wandoujia.com/five/v1/nux/essentials?max=50"

    sget-object v9, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-direct/range {v3 .. v9}, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    sput-object v3, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->NUX:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    sget-object v1, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->COMMON_CATEGORY:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->START_PAGE:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    aput-object v1, v0, v10

    sget-object v1, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->APP:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    aput-object v1, v0, v11

    sget-object v1, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->GAME:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    aput-object v1, v0, v12

    sget-object v1, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->FOLLOW_ONBOARD:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->FOLLOW_TIMELINE:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->WEB_VIEW:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->NUX:Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->$VALUES:[Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->name:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->fragment:Ljava/lang/Class;

    .line 48
    iput-object p5, p0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->url:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->searchTypeForHint:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    .line 50
    return-void
.end method

.method public static synthetic access$000(Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;)Ljava/lang/Class;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->fragment:Ljava/lang/Class;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;)Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->searchTypeForHint:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->$VALUES:[Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/homepage/HomePageTabFragmentCreator$TabItem;

    return-object v0
.end method
