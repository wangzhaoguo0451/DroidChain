.class public final enum Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;
.super Ljava/lang/Enum;
.source "CommunityHomePageTabFragment.java"

# interfaces
.implements Lcom/wandoujia/entities/app/TabCategory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;",
        ">;",
        "Lcom/wandoujia/entities/app/TabCategory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

.field public static final enum EXPLORE:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

.field public static final enum FEED:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

.field public static final enum MESSAGE:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

.field public static final enum MINE:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;


# instance fields
.field private final needLogin:Z

.field private tabId:Ljava/lang/String;

.field private tabTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    const-string v1, "FEED"

    const-string v3, "topic_feed"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0e01e1

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->FEED:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    .line 36
    new-instance v3, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    const-string v4, "EXPLORE"

    const-string v6, "group_explore"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v3, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->EXPLORE:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    .line 40
    new-instance v6, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    const-string v7, "MINE"

    const-string v9, "my_group"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move v8, v12

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->MINE:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    .line 43
    new-instance v6, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    const-string v7, "MESSAGE"

    const-string v9, "message"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e01f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move v8, v13

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->MESSAGE:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    sget-object v1, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->FEED:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->EXPLORE:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->MINE:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    aput-object v1, v0, v12

    sget-object v1, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->MESSAGE:Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    aput-object v1, v0, v13

    sput-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->$VALUES:[Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->tabId:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->tabTitle:Ljava/lang/String;

    .line 53
    iput-boolean p5, p0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->needLogin:Z

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->needLogin:Z

    return v0
.end method

.method static synthetic access$200(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->tabTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->$VALUES:[Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;

    return-object v0
.end method


# virtual methods
.method public final getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/community/fragmant/CommunityHomePageTabFragment$HomePageTab;->tabId:Ljava/lang/String;

    return-object v0
.end method
