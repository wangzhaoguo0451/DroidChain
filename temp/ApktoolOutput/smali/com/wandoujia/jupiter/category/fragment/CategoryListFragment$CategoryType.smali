.class public final enum Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;
.super Ljava/lang/Enum;
.source "CategoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

.field public static final enum ALL:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

.field public static final enum APPS:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

.field public static final enum GAMES:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;


# instance fields
.field private uri:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    const-string v1, "ALL"

    const-string v2, "wdj://categories"

    const-string v3, "http://apis.wandoujia.com/five/v1/categories?format=proto"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->ALL:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    .line 28
    new-instance v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    const-string v1, "APPS"

    const-string v2, "wdj://apps/categories"

    const-string v3, "http://apis.wandoujia.com/apps/v1/categories?format=proto"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->APPS:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    .line 29
    new-instance v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    const-string v1, "GAMES"

    const-string v2, "wdj://games/categories"

    const-string v3, "http://apis.wandoujia.com/games/v1/categories?format=proto"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->GAMES:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    sget-object v1, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->ALL:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->APPS:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->GAMES:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->$VALUES:[Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->uri:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->url:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->uri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static parseFromString(Ljava/lang/String;)Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;
    .locals 1
    .parameter

    .prologue
    .line 43
    sget-object v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->ALL:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    iget-object v0, v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->uri:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->ALL:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    .line 50
    :goto_0
    return-object v0

    .line 45
    :cond_0
    sget-object v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->APPS:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    iget-object v0, v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->uri:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->APPS:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    goto :goto_0

    .line 47
    :cond_1
    sget-object v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->GAMES:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    iget-object v0, v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->uri:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    sget-object v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->GAMES:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->$VALUES:[Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    return-object v0
.end method
